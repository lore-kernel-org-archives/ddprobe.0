Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2B25F798
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761196794; cv=none; b=uY75kXGCV2rwhXvwMKFJtPAMJ1OH6u6DAeWoYYbOvjdCDzps4+aH7HVmfV7SOWQdSyBPTMEyZkqky0wZwEzMXa+ObbnZGLIUmhqU48iSlrhsZPYazn4XEm4QMRb7yT+NVDQs03M9hXedKpqy+nt2ojMkPkFTmFnXvQ3ybovVsnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761196794; c=relaxed/simple;
	bh=l5k8b4ZfNshdz7q7COLLGbHxTk3HAvMtVaWg1TTX0uY=;
	h=To:Subject:From:Message-Id:Date; b=PANDl9mXxdC71YGM/2UO6nBh6IGdSduNgE4kMHPggjyb+R/cX/A4AgMgzblbp9nghBKPt3ZI5k+03olNKydf2SY4NvCXi6FfHVTfTQT6ZVFhf8JlnEmuz0EkRv5oiObUFcZJ3Bx24ju9m21kVACZoocUL7NwYDPmXTnh1dp6SZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGQCYXSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGQCYXSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A895CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761196793;
	bh=l5k8b4ZfNshdz7q7COLLGbHxTk3HAvMtVaWg1TTX0uY=;
	h=To:Subject:From:Date:From;
	b=oGQCYXShyQ1VQaxLHVqS2pu0jCCN231lr0+Upcm1a0U+CRkQZTy3v69e0tyqQsGFH
	 mdV5gGV+tcUsyZaYxLIqLCNJiLG3It/OlQh87CzFr++fVmGPI1bdufSY0Vz2BCgq8q
	 1eGNhNbROVGtxSje6H8TS7mITsqOIglPqpHLEUprYT8F6Kt3NAZY+Q0BsBnsTBUT++
	 qBVMMkIRXtcEs/EHmx05z4qPVoYynLCc/ijutDvQ8qJAwf5NqQUxl9p5lhEm0YWBo+
	 vWAL1leDMZ6DavYGSNEePmyaGrczIt+AgP1e1TIfMv0VrbnXGgEUYgPRo3+L76HZcS
	 gyG4TBqXnS1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9640ECCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119679358.23951.12661775173084161908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af72d1e02045ce261d84dc916be2cacc39b42220aac38cae46b8067e30361a74
Date: Thu, 23 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761196793
