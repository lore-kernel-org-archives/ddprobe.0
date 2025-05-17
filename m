Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEF710785
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747451994; cv=none; b=HPF94dh2AHyjbql97fvg570OxV4Dn3H8hDCz2f28stIBkru9WpyKcLAfVsNFNwkNhv9XrlVqXNXnvxh1hbZzfLK1XY3iPZjMG6oL42FK5nqTtOfWDYUwOqkmii21lOF5Ws96Q9nCbgppg4UO7KlfRnO377Wm1PfZ6R7YH++mBc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747451994; c=relaxed/simple;
	bh=lTPWlhGM2pvoPdk4rXJCp8tZwBRH5B1q2DG7VLxnvgU=;
	h=To:Subject:From:Message-Id:Date; b=Wel3M4dD/IzJbJbGQWD0N/257gO3Y1luOcYWEgxs192I4Fwd6V5FdBk8hXM7aTTCz+kxNMuC35qddugb3fFu/D2wPQZ1BroPGvch2t2qG25A59EB03liKdJJ9XyWCpzYbHq0GUQDRK2ZORr4VQ1Y/8B/aeM0u/+duffudYeqDko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7OcrMl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7OcrMl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8318C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747451993;
	bh=lTPWlhGM2pvoPdk4rXJCp8tZwBRH5B1q2DG7VLxnvgU=;
	h=To:Subject:From:Date:From;
	b=Q7OcrMl4ufkJGXVGXiKXgv4pUXjMubxMdr3/3+LBBsr4seC1HaTaD7Y9R4KBPVs2y
	 Rv2r3R/Fv12KbrOPqee9+t9iJkI3PaDRlf7b8Bw8QO5i5okvxkhSOqvGLHuV8bg/9V
	 qg/YY45PElBJm96OUyGAicjz0p71WlSq52GeyX61r5Vbp3IukqlKYzekPWi2Ao21Wm
	 9UyC9srs5rw34DZ7oA5kFLkyUX1Tx5k4+TY2Wca8axFy9toUmx2uPDmJ2BTX0Xr6Nm
	 JevvKghlzBaoc/sWzuVbvbiLt0pd5H3zo396ViN77UIH7MAW0shm1M8eLFQVcuKlfm
	 d+s6V39LBgFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A9C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745199358.13551.13797284037984996179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f5d33a96c6b30ed011470661293788ba00f830e951cad69f3657500cd99470
Date: Sat, 17 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747451993
