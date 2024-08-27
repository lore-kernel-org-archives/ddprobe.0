Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359EE1465AC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724796954; cv=none; b=jCuHlzOSFhCHLbulYuota/acazi5uLgWf84BewJJN5vTAgovL2+miYyy9ieVWYEesfMIH4dV64v4B92fLIkDHUChEy1Le9D9tJT95lZln2MNuz8szP67RUOLn3DmIVHvXCPEEc637Pd2Z3E2O/LW9e/oZFDdMoixE25La0rffyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724796954; c=relaxed/simple;
	bh=kVD3e+BX8L7P5aIa1KmMahMkQEHNOKbgGWHYLMOQkR4=;
	h=To:Subject:From:Message-Id:Date; b=D4PKKXtutlOBKyVOFpVadJi39LQ4uQkUJiodVJetSTrVfklV5RE0jXX58HvksUfUoBOb5IhKO5g1flQiGHlmnEgfKuH5Sy59DFWrXtTFdEek7aU4MnWRNmH0QHgYuc0dTDT8eaSNHNcOKwGZaTAnIcXmcGyaXxFA0PLrxs20Hns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRa0N4h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRa0N4h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A4C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724796953;
	bh=kVD3e+BX8L7P5aIa1KmMahMkQEHNOKbgGWHYLMOQkR4=;
	h=To:Subject:From:Date:From;
	b=vRa0N4h+Se/KCdR8vldZK5rPB+rdxPb8/3AlrmGYYbJ2UfqbM2fe9fhBO2+Gv0yj6
	 t2WSf69kUhsH1SG4RE5YEZ6eXRFJU1NFPubEk4dRIaVCqCRrUkTMS7X3sJYpzgaSKP
	 +tlJ0LC6WQuyvV/3CvRQEGi6gqSjmduKwpF8Yn3FNIRH3IcR2eUvEjVs8VANflBuOh
	 uT9B4jXyIA0ivFg3riKLeU5cx5TMjCkrMgzdnNw7ptxj52lZAR/gR/wDSc4dH9hw4r
	 yEOdhozcqfp2+KRrDONDr4T+d/GILH/RJ+VrgLMk7uA/f2hwDGtGXw/d/c4RPiD7Yr
	 obbykrKIKoojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F2C54736
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479695359.8262.15389091396846281280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25681ac43d4ecbdd8688cadae3835ab459e9745a3dad69956472c5288d0a687
Date: Tue, 27 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724796953
