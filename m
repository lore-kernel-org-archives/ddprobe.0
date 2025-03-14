Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7BB201006
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741976334; cv=none; b=Wqx2EglHo4oLZVz4xnMZ74KmcuVxbO8IFk54L95szuBufd4waovlatSK+wYDOY9SHMJaLHEPaUpQo3MKjH49PcoZGP7kOQBY8ItRZ5vHwvbfyOvuW/Gm6aXVt5Zp+SnQ57DMwrHLqqXbm4VstuMabRKVqNCd457HlKuO1dAj6ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741976334; c=relaxed/simple;
	bh=mCM3NgNWq0ZPUqT+Tt4ri0FcYZpPopt3xD1Ra0Z/tzc=;
	h=To:Subject:From:Message-Id:Date; b=GW+eErTZTwtkmTii6p9IGBKHlz5OavbUeLOIV2HGrQVyproyS4fv4MhQ7Uk1JB5FC1NzUUYyzGmETCJlFMt8l/H8ttaspYCe1Z8XiKEfO6SPMjntoZrvc9Nllr1urSJ4THrpw1BEmtOaihfLU6lh9nU1rFBScactWSuc+GQ8gHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzSh8+Pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzSh8+Pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF1AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741976333;
	bh=mCM3NgNWq0ZPUqT+Tt4ri0FcYZpPopt3xD1Ra0Z/tzc=;
	h=To:Subject:From:Date:From;
	b=fzSh8+Pr0vx5JD7F8RNk52bEniUJXoCdD0P5BRDlUcHhtzOoxUG3A5cAmcWWeSPwM
	 2ke6q0ajOfrfCyib77tBVy4lFAHrdu/EWdy4FaIX5bRknSe22OHpYgP/LADIdI7bCt
	 tISLj4Rm4ev4XAYN3dOLp2vKGCagXrlxYuHqmDNHuetM+/QT2EQU3VCmkHx44VXueF
	 JycMkECIHqJ4ykx29MKPvCwjKcFbzSyZ/SRAAEhPYVyHJSC1uPxPkc2UO/3KH4nVFu
	 1TAGSfzs5LPowEcaGzWkOeEnsefUabu90SZhsAuXQ8bpKBBPDYg/LBsO2h7o7ar0HR
	 HpMMf7w7Z3dSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C441C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197633363.4488.7578444399504107669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02088cb5b14d93acb3eb3cdc259979b4326f4f3817d77fccdea22962bd765f25
Date: Fri, 14 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741976333
