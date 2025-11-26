Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C7D30CDBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764181374; cv=none; b=Y2+LxIr5+wyoZPAOQ6P1zRP0P051TLKhbejPcqCWVrpF57X+KBEui5o88R/c4bXYK86T2DZl63X7Ez/QECkt4GUioEAnHP061EJgXvpSvmFcbkujQuVeaQG27d9WFfvTg8C1t8HHorqTL8p/stAoGGkCAV1dTWWkEnTWCRlCmKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764181374; c=relaxed/simple;
	bh=oqO93OhEk/LESOIc1Fcug3urSig0rAacrD/tHIj5i6I=;
	h=To:Subject:From:Message-Id:Date; b=goI9/yy4qd8KOipLPIgjistYXPcCcilEJWA1zX+Vq42/bVWT4CTG0iL+AcwW1mWW70hfeq+zzwpzO4g72KBKlteYJGxTr47MCvx1tB86ZPHQnDi4T/e27jKL97JUDbYG2U7oAI+eR4ONDOE5ScDrOZuzyBhKJwmNWYFe3ldZfvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef1ELayk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef1ELayk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764181373;
	bh=oqO93OhEk/LESOIc1Fcug3urSig0rAacrD/tHIj5i6I=;
	h=To:Subject:From:Date:From;
	b=Ef1ELaykpR33i20w2qrxiN5ZxOOBJA0zJutkgQAVYkrqcZIB3OBXtxc2KN1XCFp9Y
	 z5AvFRKGyCirhinuV6PvYWRNz4ndMsOgSxmhHm+SYK5XK0/w7WVcCAFDPAVbixTyDl
	 tZzuXAFvfhdpooijmxzn6JMdDkKxnaUG/q4Bg06wF+jNCmJFg8Sbe1RjvyDw+AzYYG
	 mjr+lGEACbQw8e6Bzq0QhiCmiDQ3UT1YCL0d+r92OjKR2dd37FVTIPQx1e5ZZ45WrC
	 cXrUdH8QCO8K0/0onWV3w9cA9JzBRQC650l8iRYgXVEdWm7Dias50d9apwYQcpvw7u
	 9Q1vP1XjF9KVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E3D10F24
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418137359.1368.1268732134104243749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f436bb71ff346161fd973e67279a5bb52f6a614ae4664c594342c03a2356c326
Date: Wed, 26 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764181373
