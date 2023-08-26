Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771A2100CC
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D365AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693086248;
	bh=5dR7L6WDJ6pmRNa4PJpmmZmpiPf0bDKA2RJDYsOmVis=;
	h=To:Subject:From:Date:From;
	b=YV8+RHaVyzTo3VfRHXoOd+XoPCFQSzo2vV4dojcY7JS69vqmPU3/g/NjNokoBatdJ
	 tt+qXYoQGVAH/h0i0knHLsBtxm98RHPau0jtrC+duuWIdbDOgSAXzZXrynONHB0oGv
	 tBBXr7f+/G5DYehcxdC3kUddjn0Ung3vSCzB+uuvr/J30sLGemcNm2Y/WmGsGwNNsb
	 i5URWr6803V2JQUsd+L9Gxy89hsXMLFTnT0Agbi722i8wTlLX0aD613onKMNwf5ayv
	 mEQzIHUpcbLDwH6OI6C3VJSdmytfYEbziDIsmQi/dLMdEVhFCgkWjKkt1YLJc4ZpO3
	 s3tDzao8KnTNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F11C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308624869.3312.11960276505400135561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c0a00a4e4346295f9e29d55b1cfe6597d37d906cd8415b8213dab61d6d21f0
Date: Sat, 26 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693086248
