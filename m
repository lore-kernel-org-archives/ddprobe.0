Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2600A4F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF6AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669023654;
	bh=wnsAeQiTybfdthtuFYHZ4ujS3+z4O/37tY531ly2nOg=;
	h=To:Subject:From:Date:From;
	b=C6Fwi9d9ySm4JhDo9Us+CwAuj6hD4Ydap1/HSs5ZcDXfcEYCJBsFthbj54dVbqu8e
	 RQiA0XeRLFUr533SsSYQbSpX40cp3gqDuBfTq2Q2xzK3tJbbX2t2/4ex4xZGVdb5mT
	 2wzUi6z79oqX77s9utcjGIMukp1V0bzabQ5zsyJy4K7FsivnNGf+v5RlsMh71TX96Y
	 MGDZpxmSVzfMlipJKCGKMlLL/JqrC7jXfhdzzCjYMllIR68c3Lji4vh1zz35Kx8mzF
	 WUOf+yrYr784knDHeFFfdv1GtQsdoIRe0s58JNktXPCeVPWZo3qiM9HVFXcbs2vwbb
	 utYpoQSOES0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560CAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902365434.3427.4562635245824527556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25327534a8bd1d779f0ba3fe8e575ffe6d9f257246b1e8065789fd3b8e4b3e25
Date: Mon, 21 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669023654
