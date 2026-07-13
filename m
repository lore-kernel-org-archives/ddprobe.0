Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3CB40682D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783944514; cv=none; b=reEZn8NmpAqFTPxu471+shJAAN4lP3k+xrcSeXoQeOPMuBMZgy9ZIOCOEJ7xo0APm61XgCC3MlnTV2lC9gTR+TinVaQQFSc8sd7+kYd7sDwbZ+v+81CUamVpbck4bWp+5HK2m/MHtG0a7EGWEX0ZDYo7MNpWJcWZexzJFnN+WF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783944514; c=relaxed/simple;
	bh=qVVo/VQprEdXZ+aWPPBHj8Tv9ZyRRMLjwLxDQEGJVQw=;
	h=To:Subject:From:Message-Id:Date; b=HQG1h0+xgynSNjU0VqrIXgnnAFfMSG1W88bRV8JO2cKUHeqEDxQBGCEXnjmD9Mu3tHUrov9bEcGZozQoXxAzcEnGmbdhSEV7fI8tk5cXSKUGlz7flDZ+D2A5pZiBaltDcxgDPq8vWAWr+bbxotqXczc/E3tmVLoMAnEA1hfTT+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQVLgYdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQVLgYdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD631C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783944513;
	bh=qVVo/VQprEdXZ+aWPPBHj8Tv9ZyRRMLjwLxDQEGJVQw=;
	h=To:Subject:From:Date:From;
	b=UQVLgYdJB9SZs2xy9Bvxa5mFggtQwBIVCVBBFHgSIBPlIdBqrJgDjPmolRQmhZwFv
	 j6eb8mlZya+nyK4dvnugJENV1vwSLWBCk2YmCsbjDKp3U0fYn0NU9UKN51G/ovUVxx
	 L3GyQbdgGue4YfaaaGNro0EVzQxSjqDU3T6o+I6x1KB1mj31Vw0aeQ6pTW7/Vf//jn
	 io6YerleXz0WdPGgpkR8TSLP/ajYBprXCuWlXJN32NZgPwpZD9Fp/gX/DgOVdu+uGM
	 pXZ7BKtZEQbspfBDKF7FdUyK3/Km36J2Xnrr05GzyExrneVjP+Sjk3KWvp17nrljgl
	 zN4CN1O2SRP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA29DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394451369.5651.15358081443271201500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6445d3333399a23748831486586ae23bf4e353c6c3507192d2b126ac1e0b11a1
Date: Mon, 13 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783944513
