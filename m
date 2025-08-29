Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0B2CA52
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756444194; cv=none; b=Fbykfc91vue5pHy8SAtfENnTmv0RB4t1gpkXf+Un7uHr2s19KRHUA2F3kSQjhLNFIlthuQ6sZ7atCQHvX3kfwELt7U9zHChk1KyPj5ZjdY6v8TXujfpBqSyU9pwYgO15lKLNWF6KaQ2a+AOfwXn8hp8d/+nVRWH2u6CJe9t+O/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756444194; c=relaxed/simple;
	bh=UjhqAhJV8LL0v1E/7ri64BbWrXUGs6VKkqzL0wBPTHw=;
	h=To:Subject:From:Message-Id:Date; b=PPwC86zCani+eD0WYThWM8PiTgIWkS+0XqpOP5nq6tmLmZeRcm/pQtmjdoJgyEWtZraJsp/eeVKkSp1vrytYHfFXH/x96l0BcUO0RJ7OTfkzP1DFDLuARdON3oM+WCyEsRferQQsce0t5Ydwjfomw023EZRskjQ8bfPxEbxfBw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO7ziwxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO7ziwxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756444193;
	bh=UjhqAhJV8LL0v1E/7ri64BbWrXUGs6VKkqzL0wBPTHw=;
	h=To:Subject:From:Date:From;
	b=JO7ziwxjeyfIhgsJ8R3psmMngGiVPLCUtmiP1XkHsQjLLfL6VpQSY4nj4CuNHYKKs
	 de87nuDnkPBpgtTblHyA36u+6CNH/HzjwsOzO6Mf18qvhbkLeBn7dpbSpaYa1TjMXe
	 T7bhqlHkrquxF+3gJMnZS/ZprQAq3cqDMnVLScJCX9R59sYQsUXOVNde0x39VGW7DL
	 LuugGqv98/sjXn2vslsBXD2kRTBtzHktv+QoHPfjWUq7nhrgfYUUcbtMDEneMGWjfr
	 n2Qmio+BevqmU/JR9wEXS9Fkleiw2ER11vvtbtq9oDrgMRB1570W56Vi98WiQ0Q6ly
	 UUoWQMg6Y+Lpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF9FCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644419357.19590.17474680267216162108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55282fa5ec191d205c0ab247bc21174e29835a6608540b0467a161f3e7137aa
Date: Fri, 29 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756444193
