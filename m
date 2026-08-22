Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5714638F25A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787434834; cv=none; b=Vz9kp3EwKXeSUqYnbGoGL9biGRKAVW1RIsqJ81aC21MMiNxZIz1vp74wmwzxg75bI6VYa7GmLfNW+uUo2CJGGR0K50Zdx7makpqkBti2Y+t1CULhG0W5ZnUeOWLwJjd5KLMXt1+zcGbEtqv9PZK4tSE8ZsYj6jKchEK6Ldma708=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787434834; c=relaxed/simple;
	bh=DxxqAUgY0EMSJ2uqcYBaCTzxe0jBjCcyfib3L1po86k=;
	h=To:Subject:From:Message-Id:Date; b=uMz0OC7Mtv6u3/gGYt04Te7H9t88RYNxpuaDl+kwGAxhmeBbQYDtZGK0fD4zCSx2qhErr119r21YVK3jYqSslhHn3h403bS4iSatU3D+Aj3wSNqm5pIC37IJgkMRmOdNO9sCMXs66gPbyGYjDhNKcxsVYNQTbGlEsn4GnMeUP/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U88N9oS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U88N9oS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AB3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787434833;
	bh=DxxqAUgY0EMSJ2uqcYBaCTzxe0jBjCcyfib3L1po86k=;
	h=To:Subject:From:Date:From;
	b=U88N9oS/8HHKqxixmBhuIfPy0hhGlJpVQ32AKvS1wtAWk5xGPs/zs8b9hNt+n7yyq
	 4QP3W81FaGQVK9jnYQkNjqB6MW11Fhho8DNV5ztG2S5J0E5IDQefbon7pXNnJpMx47
	 rfV9Sa2Kn4rONH2NiNHMdN3PHx5UsFEb5RLJIcfT3DV8YBecrfUwRi9wwSzRaECsgb
	 tFU3QarjGja2r8gDSDcof6X0Gh3tSLV7zBY+yh6ulJnXvrC+pOGJpZLxs2rkqt6/EU
	 g3t2jwgcJFSlw/IEdlF4hhr8NOeT4JtYwN/isZAbpfEO+4mNP9zXBFxNVxi+IbZlkX
	 NLDiRyr09YClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE2C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743483369.16742.2679185297644114397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ff8577de5b844756b2cb9e0c2737d6c1ca6fcd6231e0feaecf1690a37649a2
Date: Sat, 22 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787434833
