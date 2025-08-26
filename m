Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AFC335BAA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756202394; cv=none; b=fj5zw6k4tD/2k+i+jbUtzBQUtwoX0b84HpBK61sQeGWoOTG97jEpOoysbAqixoO5sdqvdS1mA64gQL/wOUs8lvjJp/XGIJiuY4gjfz5Z3wkVHipU4OoFp/zka5rEJ+sU6McdZd9g75Gp6IEmJcQmN7VZZDm3j1kzZCFUDTk/Z2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756202394; c=relaxed/simple;
	bh=OAVBohEkRhlTKhf+7pWIPbWAqiBFRU6o5XhhC514wRQ=;
	h=To:Subject:From:Message-Id:Date; b=VshXmbprsNTF/B75TMVvGrZgW1S+G41vzqpBiMzxTkIiJchHZ3WEHh6XtvQvZhQvP+abF1Lt41ILbFdywBpduAm0C2l5ZP4DnfVRDwDH+WNFH25edHzWteSGjOIlqYl2R8WS9Ntqi4apKo8xdKszptBxgZEY5EMdWczW5Zp8AeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axN8d0OW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axN8d0OW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C6C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756202393;
	bh=OAVBohEkRhlTKhf+7pWIPbWAqiBFRU6o5XhhC514wRQ=;
	h=To:Subject:From:Date:From;
	b=axN8d0OWU6VqOSKxIhBoeJTR+keSkMHkAdDWaWEzJezCZCgaf5eBYvuuQieV7Dp5C
	 9ezW2k/4sWgPhYinIJnE16wXOwANHPR8GfvVSNjTxl1vVNeI7zTlxjxQsaFM4rlQsE
	 yaTloDfDjxOWz3BZOoNVYgffMUEU/ijDSookqJqwr8MBp/EZPzaKnAKh7Ffkaodmv5
	 wDIlROad/El1n2vH39xEF5yjYGgCbiDXdDdeN0ut+fhF6CVqntpQbNYKGHkJ4qZ5mb
	 KYRvM4WiM11ysRRlSKefKXZoZslaQivzNpLpAFm40hwv9W29BqyE1WikPzEADNEeob
	 /dou2uszZghXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A7CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620239357.19506.7160811198044960801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1c3bf1b77a9edd629ff3063bbf368294626973dc0319e06e9bf3b917c6dcae
Date: Tue, 26 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756202393
