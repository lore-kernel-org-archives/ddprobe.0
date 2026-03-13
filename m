Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4AD37267C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773389694; cv=none; b=rv4rJ9J5Wq0gcHPbycgqDE2ge5035mSQ1ESpI5HxgBTChrvukzC6lo29nvMiPxb97yEog+UMiKp/L3hnWIznAaHLRb0JCV4sVr1TP1DmK7j62nKEGmLYDBuVnMfQENWr4ogZHxnr+KA8TgibpkYmDTEdrTGLDz3FiYStVwo/a+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773389694; c=relaxed/simple;
	bh=LbW0tp/vrRDT/oSVztgIZkHEgj6eqsWyl4KOKoHNneE=;
	h=To:Subject:From:Message-Id:Date; b=YqX6CnCh6MAGTYhJwbXTCMc4ZCoW4VgirlU3p/ZhrHDQZI//NGg0jp9FLqPSGj3rCa5fgPGXlwai+h4nEQ2oH1MhXqvIa2hwtHH1+5LLu7yU/FjY/mEFE1A80sycfe571H8E8C4kmqFZA2qzZskRajqMo5YI/5EwjMt9LIObXX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmb0tu8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmb0tu8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB54C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773389693;
	bh=LbW0tp/vrRDT/oSVztgIZkHEgj6eqsWyl4KOKoHNneE=;
	h=To:Subject:From:Date:From;
	b=Nmb0tu8H6cfepRYyhnbn4Uz+Wb5WhPiAo9Z+tl8tXxP9j24NohN9hyzTAiVdgJT3A
	 8crnRFkEGmCgBSsXRcmAGKL41LekvSBrIyEeODbjv3wxpXyXx7+O2BmwjfXYt95D1/
	 6FZhwU//rLLr/pUhS3Au6eFXdc+6s7XN7pA3MCuWUUZBuTrMPkNamdhB2YUinBKfNB
	 jHI99TWJsCRWpw16PuiG36PZ3MSV6/iuaJGlF7z+xF2xaEoaKm61wSsPR+W3Ld+NsS
	 rR+qf1PgdgUzfEj+m7Lz8iwLfWPLfo9IX7kfzXnv01fFFd7J7PtFPkQ5DYaJipVC0q
	 Y5qWl7Pr4BO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F534106FD9A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338969357.23875.12781283962842822109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a572d2074e0e31e035ebb486a98d297108a539b7e4137044028ee3e96053131e
Date: Fri, 13 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773389693
