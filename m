Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5532BD2E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 03:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF8+ZvTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD497C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696996628;
	bh=XkSoUAQkM6tIdSLuurenfYnY8+IBGMUpsxZeowcppyE=;
	h=To:Subject:From:Date:From;
	b=vF8+ZvTklenmTRAKZwJqZc3fJ4pnPSbfcbB/DlJ+LcF1P6DZ732wyy7KGX6PHvxkR
	 saNaba9Kao4tjAp92FaGLs00Sh3Q2sHSyV6/h82eA2Lq5tHya4WA0WJpya3X/JR4pu
	 piu0qF/Hso2Bu6V1kb9+8gvBMQRF4l3Qd4BMVhaVVItF9w1BZjdHr2x6enAJG0dnUT
	 nXAoBkzWpapjv+8ZqKfmSwL4g7PxtBFGFgX/0fODpLKULIpIG/jMX+rwWEKeb8TQ1Q
	 JKnbxhaV/8rDxgaKc4vG8spT3qgP9vvbOx1Ah7gixPNt//EzP0CexlZW95r5DPTbsa
	 K0HlFWV9hDocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FCCD98C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699662870.7729.3890691684083783103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c7470e31ca33be25905b1db6a0ca45e455b84f7ad8080c0fd9bc9cf8013fcd
Date: Wed, 11 Oct 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696996628
