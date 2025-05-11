Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380FD198E6F
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746967794; cv=none; b=ZcDPdA8z6bk6hSzg/8fa0gJCEFIcs1tS2iGsZ/uj0eaDUR0V9zeJxA+6l6RFA4BQID6Y5UYVcasGjiVbt0Rl2x+rvT2qEJvVMx+KrXlOKwsXMy2y7Jay+9zPNjQRpDRqEYHH4iAAhz+d3oZDFYr1zNYpyVb4t7D/3CLNyl/RzbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746967794; c=relaxed/simple;
	bh=VqzfgsIZLsc7Wn2dknH02A98lRbicJUb5G9Q67/NelY=;
	h=To:Subject:From:Message-Id:Date; b=H5VvBs/ULjZ97YnRWX9DPpc3aqgKOsLvF0S1xhBZ7nDefS97FXwYdoX7gxYmY/JoSiRGzVDTvo3q1Rw3kYpp0EFJC+BxWSF95xk4ptTUS/6Cbjn0pIpsVRJeVdhXxcip5GgWuay9eNZZFqDaTKkoNNk66jEOBR8Xd4vDmVSRsPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWFb178j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWFb178j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4414C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746967793;
	bh=VqzfgsIZLsc7Wn2dknH02A98lRbicJUb5G9Q67/NelY=;
	h=To:Subject:From:Date:From;
	b=qWFb178jUho5Dahw4HCFqMOsLQ5kcF2UtkASBXNi6Q50KPkpu9lkPL+T3AQSJEH3o
	 Ne24nG/dJz+RB68nhkiHN9E7LWiQkmy512YZzkvbw87lu4WYqUmMAbNtTn49+g5215
	 K981WuCTBXJLPiPKQom2Bq8AOQR0+wKJPFXTzAeDhS3roNJv5ZEWOWgB5CyQmLOn+y
	 DT0PidWrtySt9hKf8CUn+3AjXlMlTmga5vJomRCkcR01Y9VoxgQe1GQSVRPnz2OoPm
	 lwnKssbJ8ebkUCNeoggzZQh/n3HaP49Yra6xdQWAHvhZcs54etcXqxUk+1cZoW6EX0
	 4xLMQWsO3nL4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4FC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696779357.27508.3225142547063800204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5af12abe0c495564ad137aaa7b67c5181633e026212144dc12f2ccc56ce7b98
Date: Sun, 11 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746967793
