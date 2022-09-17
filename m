Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54E3637
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68378C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663458653;
	bh=xtgMOhNT4EOkYKSc0KSlpZQ/UtgF1JXIHAw3ScDRuzM=;
	h=To:Subject:From:Date:From;
	b=gY69rMZmorxoistup5nmInODU3xXzwIi48cCij7ewy0PY5SWYiR7C2N8+Vjd7pp/h
	 WG+9EFb+nn8FjN2UPCYL2wvfC8vm+jGd+kYjIaNSWTsVvP+pRviWHtNwGtnd1qZwOw
	 YOqlIN7sM6o95deYWkWRtuVlXCiSLJ5jYLEt5+D8cUI5ZyUIlahFni8msl8u5Ncou+
	 tZGcwHbObhsuFKnDMMpx/lavlJ4SRbd0T0S3rCHR5pqtaJ5sDDdKae1eVydDV4hVaC
	 MzBXq+gAPRNzJWgc001p+wSFOfbuMjocOdO6F2b5EAC0yVWW/e26UMSTg5TwP5m1Ek
	 /F0bFLj6hgSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505CAECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345865332.20138.5241355148203023029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791f6ef39719311e1ed374ac7e76593b16f0f8681e3225ba14054e89b601cc4e
Date: Sat, 17 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663458653
