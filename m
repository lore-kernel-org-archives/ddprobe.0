Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272B7257423
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765935834; cv=none; b=g6q3W0vU+A16IbMNgcv+YCfqhSLAMTdgs1DHqRetGJpHUNLDdGNNvh+qsaLlUXGQjy9+DTDiblDL2qpQtHS2hdLC0uXBUqVMWmzT2BDl5W+SqfTaSLMvgQecB0iwCw4I/ei2wQxhwibyBxwNu8SuUdC+6dFrYC8h5QFm19PgE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765935834; c=relaxed/simple;
	bh=pW3Qx/vVu87PunrThhJA23mSvqx64/3m1SXLjlEgFy0=;
	h=To:Subject:From:Message-Id:Date; b=C0eCvhzki1crGmhnhjKP4MsGB/J+W6TvU+RrXkPCKoG9SlJ7CTf9uUQZxH5/If1DsFOek8FqSWPGwi3oPwUuh9PS2e27sDATMI4n+q4Bsy4V8saR+xq0w4+8mt6GJWkyJgDwZinDYLmg4Do3/z2N2MurKf2/CcQtdVb66pyH2Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKrV6Wqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKrV6Wqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF72C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765935833;
	bh=pW3Qx/vVu87PunrThhJA23mSvqx64/3m1SXLjlEgFy0=;
	h=To:Subject:From:Date:From;
	b=oKrV6WqgojIWPI3NjkTZ7Y514M+3QadvnLyTExkZtkjtRSmPSo6t9WLS7HbZB+wBo
	 l3wdQS2o7tSoA3RLar1yzFOaV+MpDzNJjK3tGhuwi4qakQZbFbSHewhPHl3TC082/w
	 x6HirrJz2vCljpiEeCpc/63kDoEMFIO66Ag2WDTsSMOgZ/N5fykHq1BtlEck29Touj
	 Ql/uCccJJXKns/YcdvP4T1/H4QDSCaFT1tNS7VD8M95XmgSbRFS9LuIXCuA68o6n7l
	 ZAvVr19Pu40LrtQRYwHCzLx9GgCeX/3PiNnf7YvM55mkX8oPCH24ySwg4BpXRFMd1J
	 gxEHZopQF+7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4A1D6406A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593583363.31849.2754357921080681095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d654dd2e5057ca831f91e653d099ac275ab740914aa0ec30443d48a9108fc8b8
Date: Wed, 17 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765935833
