Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786607484
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719458003; cv=none; b=deFF9HP8pi0XB3kbk/dStn2dzJvbetF/1ex4XkV1HsdSc4lw/YcuSB5Fn1GKgCbY0cf7PfFeeYvtnfxF63amjrQpAYlsj3XV3bDo9VidNFPBB68vlBke+iOqBOKtpzVcPx0Nf5oO5NSFCq7s4SexTCl3qk0VAXKc1SWaBGtaFt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719458003; c=relaxed/simple;
	bh=N5xRp+WFX7hKa5ma4GlYSGLDqUjOX5D0a89ExN0gEZ0=;
	h=To:Subject:From:Message-Id:Date; b=sUvc/GnFDDQBvHJOCDoU3bJxOKwF4FZ+8uRWScDa1aTaCH3kE39lAN8vKjEjD1s6C6Bg/N6+hCUaiVwk1TZTiBfONoxClS0qI+fVIizcm5AkuSbGcfUhVKZ410gsiGujD7lyPoFbNA2AuYR5nDu+XeoS0KdmBzFHXXQWwSdwV0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0P7A4Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0P7A4Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DCEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719458002;
	bh=N5xRp+WFX7hKa5ma4GlYSGLDqUjOX5D0a89ExN0gEZ0=;
	h=To:Subject:From:Date:From;
	b=o0P7A4Y0ZcYwAnVy5xKdiu7zC2ejztl0jviUAfjaAsbo5cr11fRAOH02+kgfG8/hY
	 YBeaDT/lxuZxEk53JHAAW/RXXP3PO1tFGjq8pPlzcFEETTfuUc+6REOntqUAGeGwGt
	 pl1xlGtfhknmC6tgIeuiXgnHkYjO56S1i2meBGYmnRBHv13Td4NvP84FpDgE41kqyE
	 MMYFV0Bdz8+wWt1d8e3henk7uUtABtHFnDb3h3E3i/P63H4HmS5FuGe7vwnRgpPRcU
	 8ZfJFYWIMiRnt4oeCE2Tjh0AsH1xm29FkmrSK5orzqGS9osMbDVtvBPqsJrYBPcJ5A
	 Jx9ojMlmJWlTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93C1C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 03:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945800279.31310.14309188090377684066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7a8886e0ccf92132a7d69f722842bb64fce142713048a0b482125df4350502
Date: Thu, 27 Jun 2024 03:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719458002
