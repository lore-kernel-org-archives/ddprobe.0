Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039A4314D37
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504294; cv=none; b=SlzuMkKAATZmnGfzcA6DrSAnCDWUhJTjFnKD7qzB2S6oSuaky11LTYgosliIiqrd+Ol0NgN6moC+ugsEjFIl3N+TAryz+AXw8bnPTOe7OJJG1B4KRxxBU9bZbzg9CUUHEEdcZ7h0kaynRa3OevjDNydA/BOxS4+IOaiBsd0o3WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504294; c=relaxed/simple;
	bh=WmVR/mRdzhNHTGH3lTX0BcEOCRHup4Lv8Vit+R9Nqf4=;
	h=To:Subject:From:Message-Id:Date; b=HpEUEnas2tynCuy0q6bjin4g/I0uoqMvdSGyv4MrVgiiuyKuf2PKwdEyYVtMR/SxqQfuI8xDLXCSAaiCKiaeaBqPHYmOm1dgcoNR8sySAwBhSVCCHvn9CIBMpt0XVNqP0cFbA2O5C0+6WNMfwG8eVFBmcXWsUlT2A1Xs4zBUc1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9fuwqeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9fuwqeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCDC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773504293;
	bh=WmVR/mRdzhNHTGH3lTX0BcEOCRHup4Lv8Vit+R9Nqf4=;
	h=To:Subject:From:Date:From;
	b=W9fuwqeD+cDchVbm7Mhz+c3ituALiecPiTGDWQp9bjjpEAFB64QxSjg2Fego6hdAD
	 AE+V8jNG5dq5z7l905J4ZSFaeDsJLCBV6bXkAjZQLch1tf6i6zdltdi3qeiE7qViIO
	 qSTNDZ8MKUcREOCZOIiicUQLIlQsiyFuq7CmVoa5PyGValXny3dOTT9CoGp6/Jcn85
	 KOf/TTq5uGJlVSQRZnrmgAr03LH7Vn/qZFwFh0YpbkUIr8r/x6LHN0yCMDvcJidshG
	 I6TbCab84AT1irT6jBVAuLn5uJuoVjZ7FokSV10x+OI5nfM9DciRy9oHVN1E3DmRvx
	 8x+cufnAQslLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B410706E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350429358.7437.2378652406641596416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10314d67634ab8700103d912711aa54af87835e9e7dc5aebe89c1b694f437244
Date: Sat, 14 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773504293
