Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8622E6CCD
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786320034; cv=none; b=KTlY1aScXeBE6TByh7gABto3wFBWUOXIR8vazqvgCBpC1KY8Di6wN2tbJFRbNXAG5PrYrEj49+e4+eRA/yussoYlPvqOIE5qQmdrVJVGGPJ7MhukSEb3CpdMfHFNfspNGp2kFIz//q+uLiRDIlBnKEvi3uMyv1vtHI3eodaB+Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786320034; c=relaxed/simple;
	bh=ID7skAU6NqZHIY0no46VLWZjvg4UVidoGCJmVOwECfg=;
	h=To:Subject:From:Message-Id:Date; b=EXb30yskZszy2Neq4fcFPInqgRb+9Se8ooVRvya4DAw+pJ0qMSoWjYRQfD8MbDZKIpT1peK8KJ4yKs0yPrvn4sFSy9kUZADghrvn2SabS22iurRynMh3+LaWD2vaK5lE/RQOShybM+shA1FLBQGqD51/0zx+WzpueNNtoXE6ZoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlKIBStK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlKIBStK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CACC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786320033;
	bh=ID7skAU6NqZHIY0no46VLWZjvg4UVidoGCJmVOwECfg=;
	h=To:Subject:From:Date:From;
	b=AlKIBStKJUAMntdwReNJ5iynluU31RpgnaZS1QB8qyCq3kqVoZO3d6vQy1XLFRsiP
	 xugHl4oXurcI2fBYcEC7OfJb3/voxgYGcCjzey5do+CaXloR/yFM9y8XAD3TNBoFq4
	 RDFxXcOtm9JigH7vnJVUFUXrC8Mbli4ZnDro4g/PmHymVtphdDheew9FBBh9uXN1QK
	 1F1WX0Y5U7vuxcKSs0p+qGlQFSH+YfqySbfBMrqFn6E77ibJJLE2cTh1/JUCkTqxJ2
	 zy2Ck/Qp7RGjWz79S/Az1J58gf6zpxlSo0fR82dPz+yxLm3JG7CfMxGTxCkor5CgGJ
	 bLx7vTVp9iiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A2C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632003368.31160.12131155876850503464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc3f52f9b482fe0d1199c833d6d8dc4b644fb688c4d3cbe37e8b291fbde57ea
Date: Mon, 10 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786320033
