Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B0238D56
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749588594; cv=none; b=itjEihxoo+fJlUfxPnpxgqj+JcD0hKwlPT3GVb2E6gYNRHK28fvjr5b0v8Uq/FBlrbKrwmVV42FmsLO62B4Pbrb708GYZrPuNpjzc7m1mnTqKyE9pqJNgA2sJUMJMuLgKMnIHbmdq3tb0MV3umJlbO4C77S2rJA1dv8/vXUyeew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749588594; c=relaxed/simple;
	bh=XLs/rTB2BFjSbH8jZZsGbwBLamRFx5zPLJrLkLUchhc=;
	h=To:Subject:From:Message-Id:Date; b=JtvqQ1AjLLOW1tArJwGM5eOEkZEsgRVKVJISKThX+oLJ8VOVJYezH3h+BTDJsEvXNW48eTfTjwyk/y5fhvSGsFyBee6HzyCZSn/ErLL9mZvWUfiMPmtXk9XV+KhvpjB2n2HgWu4087o3HEr2iYyR5HFtbcZIwXKsp6NuEIT2oAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNCTCbmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNCTCbmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5740C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749588593;
	bh=XLs/rTB2BFjSbH8jZZsGbwBLamRFx5zPLJrLkLUchhc=;
	h=To:Subject:From:Date:From;
	b=iNCTCbmN0RC4NdnLHQqBv9fXmP1Ye0UUVnVSFvqdmZnBow+8q95mEKNphYnasqkkO
	 Utu5ThZ1FDAFGyjKWV564Q1rOUiSVllYZGjctEEQvKUGNs5NUw+ciJeZt18eqswr2v
	 VzFs/sxafdTF18cbdWPaBTS0yUdAw9uuyAF1BL+gLWFbn3z/CDpsFI2fPtSzXHI0uU
	 MbtzahYojxRGrxRk5cgX0TZa68YP98E74hkhmnvYEAPR6IIOOmdsYxS74HQubXricF
	 B6Pdgow/O7+iacWCyQS+ygEVemL5hrO3uJA3MYADuYt2y4VkjdwX/DEBXUfN+rQsBI
	 MmY6n4wjBvHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8DC61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958859357.8893.398912593383435344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cedd89a9b0341536f2da493f632f3123c6da916e264d59470afc6f591007e06
Date: Tue, 10 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749588593
