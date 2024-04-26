Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A28F2F2F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714170743; cv=none; b=XVKK74un6/JEstHki7O6337BO+2O7nlsA+Yo5l4R1fuKb1Pqpk8dPI53o52wZpLAFVQI++Wnt4EzYvr7gz0F6MZoJ/Oa6dvvPZZCt6RRLeCw8eJnkZaRFTTRzX4d8h37VKHevfA4cJrlXxHM1XJLxiQVFZX5W9n7nWTS+Gi2/QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714170743; c=relaxed/simple;
	bh=SX8cPYj46ndIm/PFlJQLrMbI1d9C686J9k0gfHuKTI4=;
	h=To:Subject:From:Message-Id:Date; b=d8+mZxKbqYWfu0ubT1HwG93cws4P1ydH/51rYuV1FyCLKF2FgkWrlpUuoyxNm+CfUztsSH/R9Vn2lL4+uB7CPRrHSjuc2dz1WhBFzKrBbFT1herGI5Dyp240iIOZX7Ayx7WivNxqPG+4Dvk9Fzu2y5B4MmO1N0Mh1vtdha4SNbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZs6wv6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZs6wv6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF728C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714170742;
	bh=SX8cPYj46ndIm/PFlJQLrMbI1d9C686J9k0gfHuKTI4=;
	h=To:Subject:From:Date:From;
	b=bZs6wv6FHnnmUakZno+hKcVMQzdxEjEU00modtBmyACs+oXnS416k458UeQ6KmbQD
	 gbQlQ3zjFNkPiCVqHBoRbhR+IqFiQ4ps/TXAOjOgIBw7q/2HCjHstXVy5RRKzzK6Ib
	 aFA9Ma6v0OmPDxWKaH6+17/eidfXq7fVnVee/WiIMeVI2bX6fVHklr9rioTUyr1uGz
	 3I+wnupOX5RhjH2mL/xc5+uVR/mXZDsLpXKg731+MiHqSSj0nipt21q//oycYqOL21
	 eJIb9k1O2+G1y/ptL9+IikR4y+3ujY3i8XOC1fPAMRe+GVKxkdgeUbgiYttmlZtCac
	 xOxnSppPx1Jdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA73FC19F53
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417074275.5381.18261866989647481249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8c079777e8244adeed30fc93208deb4001d1d264c05683227a1dd936be7731
Date: Fri, 26 Apr 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714170742
