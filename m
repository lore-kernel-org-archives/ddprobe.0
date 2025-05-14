Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C061991CB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747227594; cv=none; b=QOerkDgcbRvP0c+ka4KXeo1mwvJLhV/tE/SLIsMCqOMDjkz9qL+Y+EkpxSt/jhoj2M0uNy1wHfD2gKmzq9+LW+nbrwHj/Lfl6Nd8Hx9Mc659plopBTxBijy/kD4x4qWprmojfPH542BTfyf+rIaEAGT2hl5l6iqJOwBOKad5Osc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747227594; c=relaxed/simple;
	bh=EbjO8ToRixrFaBX/cQR0CEwYH49Dj1rLogF45PXdNIk=;
	h=To:Subject:From:Message-Id:Date; b=RAyoTWEGkPQzBEAHic4yeaYVYtzQP/NeCkWxlnpmUZcdVY8GGSqhv94ICjGDdoSzd7spiYI3kUh6ZuwmAPOLlq4etk1SNF5ZO4Vs6ClymOBcH48QhHUjipCcUKUpu4vZlJGY7e2TcO/tAQJyYfzJ2m5qbk/yzrmf4iSUCNjGLRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL4iI/6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL4iI/6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747227593;
	bh=EbjO8ToRixrFaBX/cQR0CEwYH49Dj1rLogF45PXdNIk=;
	h=To:Subject:From:Date:From;
	b=JL4iI/6fPuzYxdO2UejZ20pigaOLJFTAA/PEXMbZxLIdg+JZJHQTKBnKyF07+ZGju
	 I25Zq+SavbfP0r+qCJPNQm2wdVFMz13HxoyGCnAn/bGNjcgkQ6Iekz4vIyJn82FWd+
	 deXBgfKHWe0sIvHDJYbKJN1g7SeSa9oPv/fNZoRjNWKTUZYZnFOiNuR74kR87hY/0t
	 C9lL2C3X+E1IwlAi2x3tSGOaMNAqTzjlvCVgRVrXv5gPWDxbnv3uG6dfofACYXoRUV
	 44oVqpcnFSnwzUf4v/+L2I7+rmFJXr542AKAjhoHiafRiwe3QdE7+CmDoZI95CSEfX
	 kuoKFMPe+AUAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D6C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722759357.32251.5598171598999614050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f544492cf7a579e71d30d1e76f5e22e7ad99dd3bc2c257a746be1f9d569d2418
Date: Wed, 14 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747227593
