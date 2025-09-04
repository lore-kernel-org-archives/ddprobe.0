Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB2630DD1A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757005794; cv=none; b=jAKba74kde55uGWA+kNPE1N3NoGus3SfFtx+YFlIKJPIh97EV2rrWl5h7t9+2pvoP9CFNG5gOhUkKWs56e071AbA/079oQhhLj1H6JgNKSzkUpvNYd8JybKQztLXiht7Jm6F2sq0hADzhd/Sg61MQHd8PjGo57b4uDKWBFruhLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757005794; c=relaxed/simple;
	bh=LQBvzjdNRsf5rok8Izd1U7KFQYC5xCu63msza46bu+4=;
	h=To:Subject:From:Message-Id:Date; b=tUr4aR+Sg0fcKPJtUF2LJfTCiZSd5w6KzvJuRqD1BMKPIIVwnTj6hkNVp9lCKzcxjLFXQPWRTedV1vWNaIc/dxv4niME9f9Ao5g0yEXT5SJwqpQznl5SY4a20geOSw8mo16syJMv8Osxw4QSsTVeN+ib9rBl+Z1XKi5S3McEzdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE3hZ2aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE3hZ2aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4517C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757005793;
	bh=LQBvzjdNRsf5rok8Izd1U7KFQYC5xCu63msza46bu+4=;
	h=To:Subject:From:Date:From;
	b=gE3hZ2aPYiBDkLtjTXDKTfqyQ+4J15+U0Ens6eCTygfw+FIOZ863v52JZR/ypsnuu
	 9SXFCTWV3//ZvgGwc8cIQZKCnzOYbOhPhcRq2RvZqdYxqtRZrSH75kyIPZQkAoyzg4
	 jk9+J5/jDck9zJAoht9g3gklXLRvhqrK7hx2PFLRR4wT9gmAE+4DqCqz+4mqVIKfLO
	 nHQenDdu7lZG2FbYNcQRz8qFjrj3pVC5PmAZZtRc01Y4K1O5LhsnkqXWsuSVwyk5Ko
	 Lnq6dp3rfdgkBkm2CruF26NWWF+39aEFPsouRqH67eupQGZ+SuB4EIWWEclkjs/Q0d
	 ObwkguxNeqyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E3CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700579358.32691.10252859355488495634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba01236575ae6c64d685f0782486b0b845d3887fb65ddeb007b48ff47a7f0449
Date: Thu, 04 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757005793
