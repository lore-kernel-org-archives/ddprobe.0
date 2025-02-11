Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C621C3308
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739270935; cv=none; b=Y0M2QsMYZVCGQD+8Vy41vPb91J+l97clPFwEMogR/wakIY+vBJ3whuFOEuUY4GXFWECPMq8q5kirbUGTznE6T6X2bG3wLaFw7m3hVYrpGH9u6P1+3QEpRwVcbgnyBszI9rzX9mX6yz3xq499ldygNpkhMsn53YOBlh75kKIJIy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739270935; c=relaxed/simple;
	bh=Uha675QGw+/HU8W012ZDiNfDD8jDwNG3k1S7df6twqQ=;
	h=To:Subject:From:Message-Id:Date; b=AX64zPxgtrZo3DfWt2WpS3luD+eHsr9vMcle/4LHD7zDxrRxzTOX29xzOTaTQvnO7mpWxMh4ueBCLEMfSEmsc9n8QCzUTjvGOwNoTQ7TTLloRko8aIrRkmYEdsnXp0t33YDYX0quujqJeKMoKejG+N3ILilfXGQjnLp46SiIGKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onA6Vp6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onA6Vp6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34071C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739270935;
	bh=Uha675QGw+/HU8W012ZDiNfDD8jDwNG3k1S7df6twqQ=;
	h=To:Subject:From:Date:From;
	b=onA6Vp6UEE5u6A5SgMXcBMNamoLp6DMFCOZCECbZDfI8IuZwbdXTb8waFfFLPozG+
	 nFmIH5/4P8LrtsxZoKcgwldmNY/HudeiWMmKif3SFin6PBpscffwbAY4ZhvT3v9J0B
	 pKMPYarfU7h/fzsA30K+4sPnv6FiXb2OksURfBPQOaQFsYCkv1j7BQCZghgHFQphs4
	 xXvknVZG87sjQl5SQ9xq1avPDDC9vwiTrkt9vbBup+q/n/5WwXOpBhPkZozbWdPNWX
	 EdzaWn7vvn1AdQtn/FyDFAF1kybOkK6zGHhDGcNmeIVCGn85EklqioY7uYjV4yjpYT
	 gnk1qL/PVQEMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E5DC021A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:48:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173927093440.17983.2148442817947807523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84fce7b19ae39c9e0c9cfb6cd012f9184f1b5044599422d49aca6eb6e5056cb
Date: Tue, 11 Feb 2025 10:48:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739270934
