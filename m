Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B10779C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ADEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693425248;
	bh=oH1SXtk2N21MqlYhWkO/+lyb/nOCeW6eqRGuawnhwgs=;
	h=To:Subject:From:Date:From;
	b=rCgaXH57o7BODq00ctnxh/bMezRj2FPjpBEq2y421MovIL/4cjK0xPM7JPRc3tv+Q
	 DKKd/4vvGea7Peb/4P3zQ/wxrCFZ/BUFwOHq22qzTl+y/b42JEBlOZjDsc8jitjVTZ
	 A41Gx2aulP2t2W8I+E2mtJgUTGg0l0/QsQwjPeaHKGmkMr7qsVL9MQjFYABMwysbay
	 7AJwiyqqV7CGMRofQ6nnWHkqOnECq+XvFqK5NuvkGsdO79sSKqb9G/2ED9KZd/iTcI
	 NfRZaP6qyfE8Wn7yP6CKGP9PLz4/3oWqUBCeyS83MPz4d+wyEaYjJ17B0u11oSfNkv
	 XcwdVNIXqLaPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9120C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169342524874.21532.16363231845030282314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc57b4893a8147ec880b1f300d8fcc8057b3fbb9c7c0bc759538c615db34aeab
Date: Wed, 30 Aug 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693425248
