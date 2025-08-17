Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E33D221F26
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755452394; cv=none; b=achtpOUSV0hbtKCDVGLq7OLPLr+dzd/rqw0w0/6AeWLmGv01i0zUvQJKKK3LHhb8cnqbKSQV0nQVKbkZnjT42ya1cPn1oUUwQFNXCIUUU7sdgfJvwYi0MAprXXeV6m1EvtjErjdlG3mONpenhdJsXezhIs7zyxV3cPd6HX5A9Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755452394; c=relaxed/simple;
	bh=mQ6ePpDCglcCkxExj/fC1GYlc6be5DNOC/IzyxEC2Tg=;
	h=To:Subject:From:Message-Id:Date; b=hC7piaqKNmcSgJIsZ9n4v2PeDP56URo2UEwRRbheovKx/XtHQ1B3681SoWhMdgVXO8C394nwG+izIFPX6PHjzSKXX1cgn/ARzcRxEoJkztbOPZIjsvR5FNbgIXOW4l6c+R2aA5sL/kZW+bJkwwF8bcWMcq7dbTBleT1pLQWAIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcGDwgV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcGDwgV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A20C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755452393;
	bh=mQ6ePpDCglcCkxExj/fC1GYlc6be5DNOC/IzyxEC2Tg=;
	h=To:Subject:From:Date:From;
	b=YcGDwgV15i0qpDnD8ncQSQaa+JZfPPaUheb+1wM/5wVdviosRvx0lHMPLUZr/uvx9
	 WPSLD5JK3M1qanOAUOCHcctu8V3UjoDCq3zx5Z/s66UVJeNGlFm0KmN5mpxFPAs1V/
	 YVDINqsciRHdk18aVwF6pJv8b4GBKh545uWwwlZIz7Hvv86BC1AqAKifhmmx8mfD/x
	 EOZyrSZ2Fi8pXjlzKxNp3iUmTJ9/sRMimbTgf2CFrVSPQGU9bnKVCagETUwaLFS9X+
	 XBjqUrZ8ABHBxS9kiOZWqhyCeies0XaUJmk304V/G5xYibJG3cQECIJU1O7p12/VHn
	 box3PxbvbgoHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2ACA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545239357.7828.6421326696633192666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41feb15667e5984769aa7e69b57693f3568d657b695ece323183ffed979d3b6
Date: Sun, 17 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755452393
