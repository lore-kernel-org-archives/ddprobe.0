Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7462561A2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781961994; cv=none; b=rV+MvTHIDTMVAOVoYY/U4sQodv21iVu5ak8dh7bDUII8xQzBGkq6qPdmYOCbzp8e1Ov++D+QonMHO202uRtzIXdP6PmaHel+fXpmrbJbxQCBLASoGu5zFO2SAHCGHCsakG06FcCEiMLFd5xvAuHm74gchKFNf5+OZic00bT13+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781961994; c=relaxed/simple;
	bh=W/FdkyAKlL0rkdhyThpV6pqgGqtjZ+QEEUzIssXR+FU=;
	h=To:Subject:From:Message-Id:Date; b=BMsE9paXSDN9bRWKewcgTIzBgMzT2rJVyhhwuBTkDNQnXxkf766LCFHEOmndBlCl6ShrK4wVrCCXw4Au0i4rfF0ucxRtkZWZ9qJ2FNNAqmGW0XtlFHQQyMdh2CgSSERFngSW2YTFVHpQOHwecpvU2M8cJtD0laxqPX/eyh0K6GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYjGLUDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYjGLUDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEFAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781961993;
	bh=W/FdkyAKlL0rkdhyThpV6pqgGqtjZ+QEEUzIssXR+FU=;
	h=To:Subject:From:Date:From;
	b=oYjGLUDF2QoareJM1P3+2CLCjX1Pfiv8GzYZ4aGcErG30Y2WnwZ1VR5ELxLe48nhj
	 5rsF76htdyoLwODAJv5JRW+lbK1myt3cRPkLGTWl+f8rZamM8Ii5SeEcSt+Bn3mo18
	 YxYy1FECbkeawpjumM3TZdpYvbhQ5Mk3f8H43HBH8GUw/xOnvmNDX0DdFn+2Kkn8Iv
	 JdBpgKMT+G3AEgHPIkm4/OiOmFvTbUcJFYRACM9u4a6cNC+pK1/aqVIrwAScgXrEq2
	 xIlEcmlK5jPynaxeQCyaGyctA61p6Aet1CJJuFCDrAhpzpAuoJANR529Lyn4Z0XZm8
	 kel8nvfJzEeIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40C5CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196199369.9846.3977490576991399993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6417fd05c643b2dfb16233d68e8561ce1c2bc59f883b3982f435816ef46629
Date: Sat, 20 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781961993
