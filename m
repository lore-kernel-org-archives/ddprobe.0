Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A18D3BADB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785396034; cv=none; b=VgDOnlhsv0lP1BYSAQLQqXbDc2zypUdlMkPaqc9T3uRmroIw2+VBmV0fRB2dzBbF3E6hUMB48RG1V/ACuvEkKiednIsCpDXWdaj6kVIKy8B6cECKvWa/2oSkXIh2xplavZY9KnFE73pWUom9bi95bi1CMn8zEmb6gf+vHObzbL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785396034; c=relaxed/simple;
	bh=J7nSYRfedaQSM6SyFJbhh3Q3L+ev9N3tM2+oC39B0b8=;
	h=To:Subject:From:Message-Id:Date; b=Zg7zS86ojsyA4HFB43EIl7zISZhJXyre39+ki6gYeDqIFXf2u0kze5bheSIKuAwHEmoy7A2Jy87Szffl8x5MpXPtsMl8HxUlxBAId8n5s3hgJgIY0QHipVTjxV4UTYxNS5cvoONc4L/gtNRcOfj+B1lbCBsz4KpDA1wv/H8j2E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS7wdIdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS7wdIdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BDFC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785396033;
	bh=J7nSYRfedaQSM6SyFJbhh3Q3L+ev9N3tM2+oC39B0b8=;
	h=To:Subject:From:Date:From;
	b=YS7wdIdALVRwzcgqH3JRpRQXuP5H/0iNKLhjwIufL+YcIHzXd8lp8M2H9xU1/pZNR
	 qm9gh8OFfCLvqYZ1pSZ3RgEomYKgFh28XO7vmGw8mVo+tfDjAhLE2HmbXwPBaD/cMt
	 +zc3epzHBBdIwGMKXvIKqlWdwVUlmo9i/mHiH4Cz6dvzglNZHkgX28Sf0MXjCGDqc6
	 /58JX2Jeoz6CjQZvhtcNKoCQ3YzqMFR3sdNnzkevSRxDr4SRuQLrqSr1sGQJ8v5Sdq
	 Ugkzp1fHmlaIAP3wDmgSrVx4TqakPJbfLLrGKalgA7FnlVo0NIstlBrzGsBxCZRec/
	 dHk26BcCP22zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7421C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539603374.13340.5833698323770338307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b3cfaa00406e405b3b7553183d865f53c2532187368d048489f8842066113d
Date: Thu, 30 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785396033
