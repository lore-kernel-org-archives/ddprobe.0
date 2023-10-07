Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E9079CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRdmt9oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6EFC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696661228;
	bh=M7pD/w8Y30Q2Hk4J2+RENTEEHULwTSi4cdumq+FsImY=;
	h=To:Subject:From:Date:From;
	b=uRdmt9ooDwV7LzLZ6GmpL90KZjb8dsP2Zf2KlI3uMwgFiouBM1XY0shAmbL5FFCnq
	 9xIBA1FOzp+ddxt2n4Z2sAKYf4V5VksSMZnGdCUm2oDIYkBOZW0uRLnp/4SbT5nZ2B
	 3tqlG6GZ7VdJJHILao1d13y23noUZoOOpbTpHMsfi0SzUaGu5e0zxCEDFk8RDxAFO8
	 /e5narB5NAbVGLf3UfrSSVg6pZVR/SQmAaUetrkhC9Fv+V3cXTJizsYJogH7XQMH7V
	 JomwFqA0VMhD1Sze62+/aHvdVWYLGCg/c4NDCqf2+Eak0kDMRIp89P6wJ+WfsdhVd6
	 CsIsBQLcvD4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98E6E92FFD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666122873.8500.17194873841067808390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3803d0e237b706b88e147bd2e3a4703056636fd5dc1511a71f8870292b5e89aa
Date: Sat, 07 Oct 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696661228
