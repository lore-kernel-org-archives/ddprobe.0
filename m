Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764FD62D
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77F4C433CA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690000328;
	bh=Z4Y5/yXv353+5TV0p9b31pzcJ4j0fnecvX9ZccSBtp0=;
	h=To:Subject:From:Date:From;
	b=nZ/m+FyOu9TR5vVKAJ0vUlUIRZSyEXj3Is+7Bb9XUgOG19PRQqV3CNydtbH9Fo/6d
	 DIG7byX9fml/nYc8bATxOInDADefidX3rbAHrR4hjregZLTTOSfcA7HSlupYeFU2zB
	 R8MsKSt6P8cMaNCd9ONVrcEiEbzLLxnzKvKLt57Tg1Prx0kilBYKdT/aMdeF98oCB7
	 kLQ0ItD3ofzEyHOflaJsYwag5cp52XhZPtuf54S7N1fD6oxWViaxh74R759nZE+eC0
	 XJsTVpPxXgQRKEFadBbn+f6qnnDG8mxolh2RMWFEgOk8WCvk+oLVTplPPxFnFBx69/
	 NZq1AqWjMDoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6948EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169000032866.13844.6417569148923040463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98415a1958bda6e024f962744d89a61cdf5f8a54cbc947c82a5c22fe1942bd08
Date: Sat, 22 Jul 2023 04:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690000328
