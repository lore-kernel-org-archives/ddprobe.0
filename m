Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A691FCC
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15BACC433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682586666;
	bh=WGAxQORrU9j/qUVWUcc5Sqs0PxCuVWS4uU4e5JwDRwo=;
	h=To:Subject:From:Date:From;
	b=opvshWJ9JGdJL4J7j90mrUm8rGkZLDSyWVlIKU/w5lt55hHZRYcASCWIyetaEGnp3
	 Yzc9z4P+088dkHlNGDtLTi5UPVzmSRgAkVnp/6Xem9Ov2wsZRQEVxmPm2vPWCIejZn
	 1gG2K3qpVg0HOSDJsVFEpSERXRS7oBriQtx2xj8s1eBowfFtex6GOSzUNqGilFUm6s
	 2LYf0LiiEv/bLCJVynoxiBvg/FTr7uFMTW/4mYdFuoLAoZQp04FIHbGXQrr6mRmZ9h
	 yG54cCGrO3SGafhXUTCD08D0e7KtodhvjYm3YT/FUFW6LABORo8DTBdAAHccl/jIT5
	 Ljy8grhk5eW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0EC8C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 09:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168258666590.23505.6387275406509346368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb3d45f2d8b5620f5e5db90ea28d756cdc9bcbe5d3459add6a3231826e2bb18
Date: Thu, 27 Apr 2023 09:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682586665
