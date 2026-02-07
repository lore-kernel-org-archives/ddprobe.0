Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D91DE3B5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770483834; cv=none; b=hfDHN9Xm8gV1OH0+/gCmekug1tjwYYhknBO2f0WHjcr+2YNMWazapHRx1Y2Chger4x5J4Yz9iDeACxpjRJ7pb8HOFqUtReL+gur/28AdxrkXdB04nLyio0sB/v5JxGmr3Qiy5tabHSDa6vXrLPUBA5dzUUbsoTukwpx1Rkv0g38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770483834; c=relaxed/simple;
	bh=3k5haY7rYmKwfK29DiWXp2Omp5AqDciyNb6anmuipqs=;
	h=To:Subject:From:Message-Id:Date; b=YeOvvNM5/TZx4dq4SLnpsfpCLM97+HsEab7NWMoSghkcShfex0wIEqbAR3pFP4Wd0Ouj4sbJTFdYVdadktRXG94egKFk8DPTl6nCKMkkD0rSXss3fibPyZnbGIzheQTTMKWqxQX7JyzSW7yLY4a0+O2qp9+LDGMEUp4GKcPFBCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iABVcRSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iABVcRSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0ABC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770483833;
	bh=3k5haY7rYmKwfK29DiWXp2Omp5AqDciyNb6anmuipqs=;
	h=To:Subject:From:Date:From;
	b=iABVcRSubyir0A2maSPfAKj/zVEk5PgQgi+wv7mIXDFLEE77dViFH7wuGJox8J2HV
	 uGi8I12xV6SeZmrB+nljSjV6DX82o6VySY40qPPCuWVI8pNMhI7pX8PDsEIJc2DG4I
	 AkHLWJj5ZiPp75FYRpouKAKC5ETAqfKAYa0bNuhmGs1IJ4KsTbAk2d5At4mlokQkL/
	 ANeh6LMCVhWA9lNRIRiGE+z6Kv9cFkhvgadJtzG2Tr6G0MR4ceQyT5W4JKLUVhBDmv
	 xmcbRJbdh75OYPfSgbu1V9GnDirMQVeCwGHul0xZ9F1XGAU/pg95pZnGYXt+aTMWQf
	 vf74zo/xkJRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C3EE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048383360.2801.10378499100670008927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79145f9b48feba7994bc0c3efabb92838f89346735437ddc4c97220c15cfbcc
Date: Sat, 07 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770483833
