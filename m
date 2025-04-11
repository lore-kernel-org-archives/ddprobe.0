Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3609222128A
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744410594; cv=none; b=ZElxoYS5Yr/hAuaCAusGVoXY56gYPaORdobANI2vLBrys/t5QpgMU7mFdp4Bs2AuK/L2OtMj0Vqhvhd0olyu1/7CODL2aDkqR3DSS8jybImgQrOIdhGwZM6dAoI/I/6KNiw6UsSh6G9v3gU/b4CFrK+qXN3RFeYb2dhEyNrmAVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744410594; c=relaxed/simple;
	bh=u3ANFIgRoHctJO18pcnLn9gEUzCgqmDrQr+Gqz0x0wg=;
	h=To:Subject:From:Message-Id:Date; b=SzGiMDOGC+5qLFM+c4InlIbdhuRtzRuC4C4smAmuexnzIdhmQ7mawfuqLAPWpDkmQRUVwnwLYV0W8b1GcEH8/Pp2uG2ArKXKnbTLkpYK4ZbLf4J8vMFu16Y89thYkmvW0dBhAWnQ/yN6EnPV5RAU3SSxDpxk1QsM1Pi4UFId8PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgwjTrkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgwjTrkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2467C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744410593;
	bh=u3ANFIgRoHctJO18pcnLn9gEUzCgqmDrQr+Gqz0x0wg=;
	h=To:Subject:From:Date:From;
	b=SgwjTrkJ69r5C1VxP6+TTzDbhU0Gp7msv6SChHNbz4SOOvOc42nNNm41PmH9d1UqY
	 tpM5bEo5OCrIJRew7L2q52CBD8/PiEXjzD49TGvwdjhAgdmoysW8Dz4QbtHwLWOE2G
	 j9TUVARUDjTRWS8TdObenExIh4fzl+90uGn/OPLwF4FXJC0Szz9DU0Mg4OUWrKM+XJ
	 COT7bW98uGHkYXS/t17rBGgv3J6JiYEGZGvtdTGBZkZK9YLfIioj2vlqfChcaLgiR2
	 BS2iz/CjQvyCXwvQnc//FP8wxnYqHSTcQ/DNxK03ACH0OCmoz3jnLaPCthtFEKwRwA
	 a6w/EHW2dvqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC22C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441059363.28481.16075714012744580592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48df12f86647ce037239c3827bca23faf075b1a188ce1178310b56173ccb1947
Date: Fri, 11 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744410593
