Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606682BD04
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944334; cv=none; b=gu88I1DlbQ3BkOuB7AznumRAZT6I4RrYD27VwF5FKVZUE/uAb7KJALMtWyPldpqO3M0yc7yTq8+A2vc1SvDHrJCMLngaHUpKNFE0pZFLRjUMeUpWIVJy0xiWhrni0rkZX7ZhOT13w3CJxmgAahjot/oB5KlID17c3YCL0Ke/Lxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944334; c=relaxed/simple;
	bh=AcUYMOKiV7FlNz63Y+3dEBzq60Z9lPQec+2PEpdmDRs=;
	h=To:Subject:From:Message-Id:Date; b=N3o3fRKeT+0pS69l4T1tSoxMmQP+7Tm2EuARAV/VT8d+EkC46475DOThbNn7mIUFh1tKib0RIntyfSxTHf7Cudm0uNct1vxqscpJfL9nVpkVZKlnuDUFklSUWtTawhqqtxvxT0xnGTGYKA9RJogX0pZa8nduI4tJV3Yx/OFSxXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbsxilXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbsxilXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE0FC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740944333;
	bh=AcUYMOKiV7FlNz63Y+3dEBzq60Z9lPQec+2PEpdmDRs=;
	h=To:Subject:From:Date:From;
	b=LbsxilXD8T9UDzI1ctEybFsK5FljVd0IIrBZlUvoFCVGC6bm8KW4RQe32FUX5es79
	 LSEil0RlfkSIuYooWbmcUQuoNtHbP5A8QAcUnQJeNH6KdKXCH1orSuQK6P03AEpXL6
	 o9dcdlbEnAH+KYwvz1rCcZtOA5HJ+SNQKzoMTbYT2fUHlAPKwlDMARkM6t3X6Q6pbk
	 dQiAViODcjtlmDNhlW80wAgR04wEP2V+BZeYRhta+zmHpxmNnp2VzM2eDQ5i7NA/Lb
	 /EmuRaQ6FPI5KKHFtReKsDc40eBgZdLBn303cs0ShaFDTkwCF7NYApmR+mQZRckhyX
	 OYTg3CRPVu32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3BCC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094433362.6228.1267767550409757145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee718306882073e9d64b6c9ac2400c39ec18ac6dba26618ad499ee701f0d54f2
Date: Sun, 02 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740944333
