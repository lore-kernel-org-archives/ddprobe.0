Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74C53B18D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712438897; cv=none; b=MuFPdTgk3Eo4qZ5heI6TEEv4jMthWJjlbfqlP44SsvcpdSpqSittOJfrAhj0irEF5/N11BLdbKZnz6tFV8KB9l+P/cM/3SrX/L6aBiVeI55lI3WJ24bVru7cf2LNv5SuWCQNj2OxP5nMtLC5POx+kb+rEvF11c0/xFDb+fwM9A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712438897; c=relaxed/simple;
	bh=5nHy2yS+ZdpKllnMCZLWigjtLCnzQGCa+pOz0TLky6Q=;
	h=To:Subject:From:Message-Id:Date; b=XDCKVJmuYz0W+fxRW5YBWCUleTSqsIxE4d1Cg6CiOGJbYTA//b93O3hD3DD6EnHbRktNgyOFF+5YuNAW3sAw+Gn/aSGICnOPgIM1SnZe4qJ2J62N4IkAWfxSFXoKYYUNWxeBPH06SubMqmLzEnRDnWX4F/xk8R2a4AVbXQizTf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Vb5XtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Vb5XtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713AFC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712438896;
	bh=5nHy2yS+ZdpKllnMCZLWigjtLCnzQGCa+pOz0TLky6Q=;
	h=To:Subject:From:Date:From;
	b=D3Vb5XtGeg0ghir6ReE7Xv/3Ji5YTJRMTQe2i6S8RafWCd5gq1bACP6ABCY+YU1Bg
	 yny7bzy5GT/2L1FTVQ/01wGhkQZUY/aPBlKXyhZyMGAxTwGrGfIPW1scbrrdsDVkvh
	 KIljNkrBB+YrPAzZRdgbVk0iOyYY8pQS7ugegcPsE/phxAo7b5ONDTDssEloOaXpxQ
	 6wUyBRzLgJ6plH0k5zFNMeWAHUkPRXcBjNWl1XfY8U/R8jVL2WchTGhHeQXT89DZgE
	 TbXdoJWCVxcA/m5KWCzR6jkA5glMOKWPBBKQQ913O2xztIFTCh/NqbYXbL8hmuzMLM
	 xByN3mSMxtxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAB7CD1292
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243889638.13068.3578579612840875889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016c0e995db500c1c72ac85480227f4e520dfee107030bda32008651629cd20f
Date: Sat, 06 Apr 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712438896
