Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2118C6AA4
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUQY9tk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9932CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697781496;
	bh=x5oyikOqB7mYHv9kGc/9CbT932ZTtVh4wqeD0KRHJ8U=;
	h=To:Subject:From:Date:From;
	b=NUQY9tk5vG31qvXxm4NOSoTpwOsTyIEjURGQ/+BbfumHLjD9Jjy7R18a5hGUP0AcD
	 3cwK0sK1DqEOEP2IoMZGtwz4oW5WXnW47EakXymZIDelpkVUnR6I2VLVblf6O4Yn7M
	 iaJp6aNUCCkAeq5IH4gmzAdbO7kGx2amAR/QB25DsepSJoqMy5/QuEt+7+HRh9cs/b
	 CP3yNeSATCWvv4eTlwC0lVlJv+P5OZz835upy9rw8mNOrV+eDkOyOJpI2QBjeeOW+s
	 JoAJX3WPS7PfhbWsJ6YApI8CvHoeNR4Q1vmLPGIHgQD9l9drGFCOoE5l3skZAgPfMz
	 6QGtn3eelF54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73504CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778149645.31141.6104642923867635618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a846170b2b3571320bfc14dd2c33261a55f71b5422ef97ac2ff2a00021401a5
Date: Fri, 20 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697781496
