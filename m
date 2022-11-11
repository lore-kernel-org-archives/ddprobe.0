Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9D962A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEEEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668140454;
	bh=RYzVjR3Bdpj0g84bfkebYOGvudvYuMCkGwqUUDA+DZI=;
	h=To:Subject:From:Date:From;
	b=FCbpLbX1Td3eCvvgaAJx87rc58hJqaZiXCZRQ36ju3I7GqFCW8nH0OGQ4394j5MPE
	 zRla3GBLIrVmKwBrtKG9iFP3S9la3573z9uBins9g7J7Sjf0RLX4I6m7vdwhjeEOJ+
	 Yj9d8chqbhZQPE7TGUakHu+JpyP4eo+bPEDWM+HwP2GX5kYwbHE0DqQpL2WPkk+qSI
	 XDUcy1lNUtwxv0pOc93YyoQnPS39VibzAe6LyKwM0/CQgnX0k8fhmpT/+FLboJCnsJ
	 obozAexn+ZUnos9lcnlcPA8ddO/Ko7ejnp9ULkUkXAixo9TB92olnQlbJt+633i8M8
	 b8rvbT6sO4C1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E370C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814045434.13198.6606998898307210034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a745a3d211785095b406586354d84834ed112dcb8edea6265c279d8e31927a
Date: Fri, 11 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668140454
