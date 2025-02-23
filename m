Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B1F23A99D
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740342534; cv=none; b=o8ss8zQRlZwMjSbpRisZe30yYzU+oxuXizyy9g1u0lhIuk/LCdB7IxJg/3cwiACzLkmMCKNkk0sWEvFeGLRfg4hPHl8SsHpW8IEp+SkauOhx1x4n2zBtXICndJbYnFsqd9JP1lr4hRufcTDBXtIxY9iMHAO3k2htT/D1LNQdaE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740342534; c=relaxed/simple;
	bh=mpXwE4VOwJ52wyqy6WtfrMmNxClbIEjyJwAUCd5rFIU=;
	h=To:Subject:From:Message-Id:Date; b=bIH6VGIC/EukJRci1foQMNlAPr/qYfdjW6UGN43+vfUK8njaxL8WfqPcp0QnU7R6HsREhnLG8Gb5BJRnbA4h/w76vF0I3PkBEnZ+VXdRJBJ2dZfaQadFCmOVT1Hnuh43ZPZFh6FmhcCyROZFyCz0Tts1NdGTYyPR4SHN819K9/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLI8vUMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLI8vUMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A73C4CEE6
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740342533;
	bh=mpXwE4VOwJ52wyqy6WtfrMmNxClbIEjyJwAUCd5rFIU=;
	h=To:Subject:From:Date:From;
	b=jLI8vUMGdQijxbcZQQrj2kdPcoPZ4KGBewzTJXr/cQJIM/KhIcoW9CI2EkLBgEHXy
	 TMiOKOZL6FgwAEwcxiDWhazUCcBawfjzvhNUPXiPmKAVuGiv3NMS+d+jFjqm9Qr97I
	 wrIPGUjpMDx78wnyTKCmIvGvCZKqyuGcLSEDEh+yLI9wbnVAk+tZR3zRyxrIeBJXxL
	 vNOwDQiwoVeYE1IMrERPhQQLgaKlYz7BWdIVj2q5p7HdTbPf/EvAaSTKgT/peaMcFe
	 AaCvGqToBDm7DBh+iPASXz6vVRSTvxkrBfOfCoJ3qqwv7JOZmaVon96r1J3ohvLT2U
	 Nzs82p6/Fxa1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC0EC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034253357.28031.11003318611418342838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325d9c869f93c88cd150ca3adc77edaccbbabb0cd3d052ef47de133dbb5697d2
Date: Sun, 23 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740342533
