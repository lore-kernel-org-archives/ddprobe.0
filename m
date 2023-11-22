Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BCB1C6B8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG1Ylg9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B711C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700689096;
	bh=n+GTu5isl4g/J+RMGtdP/R6R3m8VNXwilFm1KLgnfuQ=;
	h=To:Subject:From:Date:From;
	b=oG1Ylg9Jz3QT22NOCOHE6H8M4aLXLcSrVjsg1ZjwALfTPop7FUxj6l14wIGFGYRId
	 SEon6SbU4rUVlk6JCB8QA08dTNkDEDGDcbtrY1n3Itl6lAKRzHA9fqtUN4HSOmX4Q+
	 bmtjus07XpXgpT9B6eLdeJT96PCoY94M5qhq7mGnG88bvZm6Ds6dXZFneHkdaBT2sd
	 vvB8B43A5YUMBN6M2IahlLmJ+EMN+jg9+v2yz+vOQZ6YsyWlnWI2ggZrCcfdERdsOu
	 lQHVOJYAT1afM1Xg4GiAEX/Fi7YUI4YNAIUVhABSIOEK9cJSHkb40SLxIvhRS4Xq7l
	 pyhkre++D9k1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F77C27C40
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068909640.23515.9211999973355096095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2065e6b678057e84f4aacbfa19a248b28fa81b3c78394c674ba105ed84bfeed
Date: Wed, 22 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700689096
