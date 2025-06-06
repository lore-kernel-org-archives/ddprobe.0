Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E81A9B3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749247795; cv=none; b=YoZXl/lgFk9GkosnfWFfKF7xDRRph8/EblSVMQMErOq+bchaKJQ0C/RETKLaU28JH/B3XH/TPfzORiX5y4kK1dM1sUf9Qj22mFmFJCZXUpe4wxJ3Uha3loUkGLjuu+CJV2JUe79GyMIdeUHD1YLWb+iZXPVITxjVWabnIHSTF/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749247795; c=relaxed/simple;
	bh=7OnI+tkfrWwgFO/+I26M6WyL5vD+jc/YapCMI1o8KmA=;
	h=To:Subject:From:Message-Id:Date; b=bs7wOB0M9DJBsqcvo1drl86Dv+WzFaYHbobqMzlr/PIFPwC35TG4YszEVZExqvyZxKfXkk9egYkszZrTnUh25ow+H4azc3nrzJmMF4cVp5AIb/CEDplUhN7gotsYO2Nl0tJhOBRaOPISEjd4azLK9DRWPXrKyXIi20/F8KMtQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AR1MuCfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AR1MuCfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA991C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749247794;
	bh=7OnI+tkfrWwgFO/+I26M6WyL5vD+jc/YapCMI1o8KmA=;
	h=To:Subject:From:Date:From;
	b=AR1MuCfvHxb683/ZBjNmdz70GitfOHFXkfcj+8Y5caMsUbjNCtlNGrEOVlJ1872Ev
	 x98NADug9FjoFpWvuA5g+VBusMgnnWTZzyz+RxsSDxWnVtJzvfJhZWRUbbsPC9oRzM
	 hRi0zuS19zfh3PakScHVUK4Wpt0mzgJxKR4rpwCFoPpaaTX3+jGu7tt3U3fFglA3Y3
	 kIZIRwVdRKKWpIi0mpVoKcswX4dvqMlPtNw1fkHSyC92ZcRisWsqSy7NuSyT2L8Z/B
	 SGztsahSPCRD2cet3HdPDwVdWzdxio2XMbhpiVdJKz0yp9jk45w6sSZN9jTWV0U+zS
	 jjeXs6SC5E//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF1C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924779357.31443.8531462085921868608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0dc1d776c677da438a015a8abe035b74c86dba2e19fea8657943a7d2679d1c
Date: Fri, 06 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749247793
