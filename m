Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4058625B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715184743; cv=none; b=XHSyS37TwOP46Sq/PFo6jaxogydr6sTrSzuIIL883bAa1wW8b1byRGn+EeSeiu3B/JaLbzHmyEI0mtS+1+5tS6IJWhdOgGdXxOnzZHKA6H4niMfTIHhFifDx9a9I4Q+4+8vZc5ezFiCZ29G2unN1ksvQOkeRxUYwO48gRQKDh4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715184743; c=relaxed/simple;
	bh=QM8NjFMqbWZvzYkfGdjAIN4RQMj0UW4uHmKUggkx910=;
	h=To:Subject:From:Message-Id:Date; b=WrTL3l1fofrJZvMOJVbhmZ56dGvUzDDB60yZVXEGdVJ3/S/rn1/UYUn+BRlWb6P8pU9Y/SmXpKZSxctllQ98QGUMvbeTDNA7BiHvIErpzwYRXR2F0ot1iA4A8hio2+NCZbBM0gYi6KC8W77jcL4SSsLCzCHSGRA5BTduMUO1XPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaFxabG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaFxabG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2010C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715184743;
	bh=QM8NjFMqbWZvzYkfGdjAIN4RQMj0UW4uHmKUggkx910=;
	h=To:Subject:From:Date:From;
	b=KaFxabG1XxG7123gV2qRwgf/0NAiWS7PDQ4s0g9G4+U3s8MayDENy068Qb+PffFBM
	 Jrw2m5h9tpZVJRzGMeMoPZ16ScgQTxxGELSxFt321JWyjnenwoz5UBxzHJuT6RepbU
	 LPgOY8uMHSPjeEYwlH5MFrLPTxkH6iquayoQFB6rlwff0anWMfxYJoUc4pbwTvUqME
	 7sl/49K/W3In5rO6dZ5R2eRStAiWjK8UN1JNN8HG4omXTOB7ydUhEoFZJaLui9doLE
	 XYCXZ2qM8wkgwSjK8+hk/+sxDr1jWdtOByBhgM368T8bIZ3rHMnDbyXlTtoMsKwmm9
	 ZgLNUWYAhfsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4629C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518474285.26625.15793633813079884898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887e94388717370329a3f8e9cf925adfbfbe493d9289680bd9e3ec5b365c5561
Date: Wed, 08 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715184742
