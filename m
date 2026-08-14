Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AFA3515FA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786682434; cv=none; b=LtukRnndVnmYIJULq6If3Z003vS+4qoS3y8LsRci1jbgUtGwBjP3wDXbfgh5+Es21YczZaDLix1H1T84w1gjFX/a+tk4iDwS5Q4hW4zOtpeWhiykAag63m3ho0KRrE4svJcnoPv3x91N3IdlPgLlxk9tUf9wujC99zj3b2dfIKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786682434; c=relaxed/simple;
	bh=CMiBzeflFdYjYhndbXx9M4uaYz9NyWug6vpxnpM7/fQ=;
	h=To:Subject:From:Message-Id:Date; b=mwcFnzl/A8FkgSnGCZiRL0aw298HGBdTi57HMFd6Ioi3vKjSw3aEkrkz0/qehvD9MTJTB1W0b+D8EI3OuUWFoqC/7Bdt0BzNDqrDdvVbvsn0hdDQLmIrC1uWvxmZHGiZE18vNs6tyuqzUqmyu4K6RXTbRnpHY9CcjD5y+/fV4pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTCGQ3Ba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTCGQ3Ba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786682433;
	bh=CMiBzeflFdYjYhndbXx9M4uaYz9NyWug6vpxnpM7/fQ=;
	h=To:Subject:From:Date:From;
	b=BTCGQ3BaLfl8TTTWB0Nmx7PwXGVq867v6uj3qIAkEP9f44ivJrPteZnKaD6OkBZ55
	 zmoYs9XejTknfi0h40psi8j7qhLopyeXMP/KQYocPfDCRDXANenqYZd7eTeTsOGLTQ
	 y7xH+sGallDmvg9x7l4QdZ/04cjehUmrk/6Tjp8vzUDzdS2s9BGjhC2s3dRemmdtVf
	 74GKceNjto1IZ0ys3DV/zaZua1bW2zSzKVWE0+le4Tpph7zCjP3NKYB0aGg36MIweP
	 kU8uKdW6/aLiAAJWjIQj4kpWmHV8Zb06gCI8qEztNOrSDjhabRT9nYkpcVVDdwHKPZ
	 EVkPjOQodpj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9388C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668243368.23824.11256838937928645683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473f717611daecb3fbd9d1c7a0820a4237a7e06ce1fb03a1ad8392019d7530d1
Date: Fri, 14 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786682433
