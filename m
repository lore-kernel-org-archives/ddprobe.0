Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D750B2701B6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784694514; cv=none; b=YRWxQgKBUH+/5JcD/Lf+vufyLCWTh76vyK3UMCXl90kn8aq97Uwmc3fftBWrQ2z6jMGFih+vXGj1orcR037WausimuPS02WbAzds6DIdBpf8M4Dv+mGWzJTqVGE0EP8f0IzOQcIXTSkI46z6vXdSUsUrVsLt6oOXPkBIAkLpm2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784694514; c=relaxed/simple;
	bh=I/erNm6rWqCuc9pW7bsaD2E7wfUYfNmzOXgce4arXW0=;
	h=To:Subject:From:Message-Id:Date; b=PKEbvtVKafhhuiH+NUgRwY/kHHSW6k68cZ3uApwRChWdqYRjgivOn9QkTV4qnxh6jnNH3ZipP/u7XRfB5J8Ptfa5BxYRWXXLB81w1jvt33IZ4ajPxi9+ZpXazxLv1jo1eGOZZ9zG5RyuNolk1c4oRPGKKpJ4zIGH3yVo2wZxMeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1OCo676; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1OCo676"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7514CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784694514;
	bh=I/erNm6rWqCuc9pW7bsaD2E7wfUYfNmzOXgce4arXW0=;
	h=To:Subject:From:Date:From;
	b=i1OCo676syTX2Onvt1YPgCTKW7SglWOiBQYt0YlgBTEdFb9ilEEkiFZGoHFxFrWts
	 2aiZm3Wna7hljiqdEnmJt6u/BfujyoYnebhVNoO6Qq0vXOPKGG0YaV4YGeQIOcOpj0
	 DqxqJXSSRtiTZG6mEE+cZoKIHiHWFNMmkZ9gReK6ReUpoRE6fMm8MU2u2Ss2jH3Ksx
	 4FZOcHCy2Qsrfmixo8HwvNxH9SONSdvrzbV2wFRxtqtUI0Kq6zZwUwi7FtTXLz30w1
	 T7TA7zSIA9+GcRgYTYk0W+nMkfOZCarpxj//y2S1MHAsmR14WR9bq2TrVRxj4SsYUb
	 PluB2K31qZ14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 080E3C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469451391.15511.9496300283633939509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a285c25e2d54bd092c06a071254e76ef3a071ee0dcff412eeee192fa6503a30
Date: Wed, 22 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784694513
