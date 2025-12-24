Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D524468B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766564634; cv=none; b=Z7+g5w0CqgRBEd2Y0LLxnmTHAFjgwY9z8qPzygWuc38hCFdVwq92LZedG8fL/8q4Hcnfa6VWLPmbx9ejckh/5J1czGOyMTPaxDztkeIQUj0F3ifhEWrN/3RXFbi80CTBxSi7ujwvcy2iTBszcJjinHZ72HnmUJQINpNy44Emez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766564634; c=relaxed/simple;
	bh=9g9hamzUvmEiB6fZj0ilpIR4bUl/lWPznwUTmk+PhVI=;
	h=To:Subject:From:Message-Id:Date; b=JbonlzjM0VW/TsrAdLT3B9xvLHkAGLfhK4oLWcL4paDEj3wQSByFoKs0EI0ZtMrvV0uOgFQvXhdG4bLcPGzYrk44BKaZeUtMeyaK0aIANA5grT5h944YD2biGsiceSh+t/UpRwFOSEvGCwCWqJkh1N0XMkjU/zYMwTMCvmIYIa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeF62m3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeF62m3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F032C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766564633;
	bh=9g9hamzUvmEiB6fZj0ilpIR4bUl/lWPznwUTmk+PhVI=;
	h=To:Subject:From:Date:From;
	b=EeF62m3Yntofp1r34emTW/M/plPkNXM5qpaWGTAyQ9D8/YqivskWL79dSrZemoRSr
	 KZ9AXaGe2kUJOvRXZ5Hf90iGqgMYcw+yjj1hmEr4KIU+5PtEGf3o52gfU+vu1SJmjm
	 W0+1Dr+vLNsQ9zsg8OuLg1RTEBOxmeFxo3qUiIWb67Uhi8QQt01myPqwETwhYTpPg1
	 S3fJ2EbjCWadlHu/jCVcADtJ85BLpbbgSlnDWm1qAsJWCWJ1DxI8tQDpgShZRFzE/j
	 xtkd5TF77O6ndQmVrNxxcH0YLsn20vkI3GMcmro/3DI2AcVczHyrzTC46TkvH66YLB
	 BdK0BxgvXW9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A1E74AE0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656463357.5866.14394693849053590666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0595bd852dd43ed6e02b64dda99ec13c22fc388ddcd6ce383e103815672f7ec
Date: Wed, 24 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766564633
