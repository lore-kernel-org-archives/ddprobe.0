Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C8D1BF22
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4dQrwfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79779C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705415296;
	bh=dlcUX2iDT4tFfHJr//UitBXhPPh+UEIpRMorIchHv5U=;
	h=To:Subject:From:Date:From;
	b=h4dQrwfovJpfU7jDw8IgMu/jFK3dhHsyVIwKC6rILcxfK2jMspWBrksVL36VNHwoT
	 n2IqWHfRJsGnHgh8fal/Gq8QzIVpY20dbhqpRG7cGyBI/chsW0Y5hMfMspIEuLkKSj
	 zgwZjNE00YR0LPYkI9FJCpLAtwEiY4hrMMn5+R3AAcwVcZ8/cn/B4lYZpIC6zm+Pa8
	 f2SkGbm1y09DxLzsWHSL9b3w6TxE3IHQvPUbFwyCXep4DuAeKFpiobLak7ZO91AqPF
	 Px4cSQFvyyAJTMGAT9POBnyXAud/aNTgja99kX+qOpiW1OpeIxbbr1OyvUf+aXl8d0
	 6dzMkb1Du+Gcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4AFC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170541529637.32615.1327892623043504216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40752984312beb91716b3e427f2200f276aef3516a6530a1f911d1b2771ce4b4
Date: Tue, 16 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705415296
