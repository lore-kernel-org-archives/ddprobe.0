Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E967538A
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD45EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678643825;
	bh=gBXvyPz3HrLaoVnw85CB1A5YUr25a6QmaLxJqoir0aY=;
	h=To:Subject:From:Date:From;
	b=tZaw5h9h/bsh+NF+d0uvUb0CakYTlS9x7zdAuHWg+Dw5dlHNWN6EZVzMfyfXOA9UW
	 4j1GdLSRLLFwr21ueMh9ZNnyWGrd1SaMwDCVtfuCtMaTGd/G7ZyPPFfB81c9+fL8W2
	 i0bw4CgFAEOBflBJuhpo/LoD4sLAJPVrWl6bYP61YUYqWPuTVoiflWpbyanJghTKSq
	 0ECBtM7U9gpIztc8cGkoMTu9K4hLJyery0SY5XnYr4Jw3Pfwc43pQUgVHR9Catke6h
	 1pBFTwyiCMnG7kSRqvtQ9k+OhO7AqJoSvIz+I1907w9+yLCXIARPhFoN7inXMPH/d+
	 JbtbYdLL9CJSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0850C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864382577.31641.8661402245994399261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b21b2d3e250a6959d0ee3c772f3bc9cb11539be1ee1ba9716cb74d54418345c
Date: Sun, 12 Mar 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678643825
