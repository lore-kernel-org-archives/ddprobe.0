Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613A84A23
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738376754; cv=none; b=HMvmoLbxD03U4r5JRJJkIBbVYmOXi5m0c4+dgBF69s4nmcF0qjQjmgCiGN/QPB4069Crga1YiY3UHqyMgYudwWKre/FPZDQGQCxsGgzacK2I5ra6g6BO38VJ/NnbXMXY5M1ChMFRuecYxxpDkCAwB5+MMB7oueEouRBUyPMoZcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738376754; c=relaxed/simple;
	bh=O4lYvK/Uql3tofBTnN7dfytMlGftqnZDf0p02jbLKGk=;
	h=To:Subject:From:Message-Id:Date; b=IxemTHBYic6zJ5SRp5UhxWP4Osze6gWoOssGgRWlQJHuGB4nhYV3/UpA7MWj8PFpRtDjQxyTOgjWaF2HBMARrBE77T291afRV533185wZ0R3QfEi0FHd3A8511QUVXoq8Tie3EaDCWoNZFU4X4/lwcOyT5NKqHz2sxiCyQN3ac0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqRb5zqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqRb5zqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD33FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738376753;
	bh=O4lYvK/Uql3tofBTnN7dfytMlGftqnZDf0p02jbLKGk=;
	h=To:Subject:From:Date:From;
	b=hqRb5zqqSlfh6Be8vkVLWpg7n8ZUFnPMp/qxtUgHQr5D+BKwS6ryb4bve1m/AAi8w
	 nhMV2vma+bTPi+3h/9G2DrXr49S0Nb8HZRQPIlMvccFensYqSP+I478xUtArrBcTWv
	 2aFUvQFHQr/EiKae49Zb47j7z9k3piBAeZjaZN+a9vO4iPPhnPH2WbtxGLUk0cRwdn
	 ahkIsr3Hc3lFj/uxrdNsNF7vEK8/52L7JwySZPT2wLmsqqCQWJjliyxcL8U8OTH3Hq
	 EnGDS1Cm//pw9Dth7zsU8vRu2YlwwCDTVF3QsEvtasjFgHQJSk8ESPa73CXUGhzLx/
	 V6XWcX8jzKKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D63C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837675358.908.14972004730280499377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905ada5eaead74d730c0db78fc3ca100ccfdddb28b86f620c9f2b3284ed0a8de
Date: Sat, 01 Feb 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738376753
