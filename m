Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E642E23A9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BADC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673185287;
	bh=fkDptB6gpk3LYi32qB79r5mJIEElMs2Zhgbge7emHdE=;
	h=To:Subject:From:Date:From;
	b=HBoiyh7OEkAngEbCcR5sLH8+XU/nHNLpWKmGRu/GWvGWeSwxmjkU4nrLVoIlUHr73
	 mSkdmm0nWbAwYDbfnodkaCduaMQDBkl3fv7YdaE0/r7s41Lt0upnLkNtSPPo+nc9tx
	 7BEVCJq8rsZzsP7oLI7mtTTSS/YDx5e6ij10QWErOWIkb5QbO5GL2AqW1nIyoZbsT9
	 qGr4ULjXl6CqqbGlTfFJklTRVxV1XogzQfE+9+Tem5+kU5HYIhQBV6P9UleDlF0GXX
	 lqXAsAFSWRSUgJTzNPwQGvId/e3Cn68xumBCXco4UDToknLxOrGiQ97mUtAr8ktP1n
	 HJkZWRzrJkFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAB5C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167318528742.9846.7006992110206337345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28902643203b9ea1f24ce84051772c89d5fffdf4bd844eba6fdd33c0fe8b96d2
Date: Sun, 08 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673185287
