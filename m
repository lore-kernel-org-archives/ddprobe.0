Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED9933FF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 23:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04976C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 23:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676849286;
	bh=DEZTzB29U+RpyeU42+3omDmca1RrsNiol6N7nxFL5uc=;
	h=To:Subject:From:Date:From;
	b=Oey6qc2ad9vGzSguZ4ecmnCgFlbOSoHZaKJirT2ZyhWj5P1br5MrRBgCCf/B2/0N2
	 2mLmqp29OAw13kXIVA2lzyjih4qL8HBzeyYKVYQU9BCkAMPNxJqycYA2nMToOrGyFQ
	 Hg8O+z/kcTXfaHhFnJM0cyGwVxeUjQs9+i2XVbh03nX1q7AqCMRxTbVAdmcHYdYGas
	 S5uFB8+2/AqMPKK9E30TsqcKivf19klvZV7W843oLPyYFw80qBAhG8HBN7zxE0JY/R
	 fWTAwPMl9XSzZOqFGJTtbXwilDW6tgZlb8mIwIdh38d/mk8Owo/sBHJ9UlwkaPZqQc
	 GU0GtDdETe1TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D150DC636CC
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 23:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167684928584.9107.7736309138404285734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3894cc6482d22f721622eb430a6dcfd1a829c8785a36b7ad8c511f8823b181
Date: Sun, 19 Feb 2023 23:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676849285
