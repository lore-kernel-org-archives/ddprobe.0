Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AEB7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2A7C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662535253;
	bh=q161nra0cUTnwUNJ0qEUqp972i2p0LI4ZUl2yCmc5uY=;
	h=To:Subject:From:Date:From;
	b=a9pFvKis0l0uredym+kIKoHTfwZiTmJ36o7BzWhyf8GZlyHFrabYY/jVJA7NdDIEK
	 v039galDAffZYje/DSlI5ui7yIF9psWiO4cimaIZbvVYlY/KSgiBpfpbnqr6K4o790
	 3U1Xz9hdGrvtCGXFflLOvHJEQ1R39vcnIz8kwuS3xAzHmeei5/torlDFR28wQxBrCg
	 VjEcON/fvpC+HFFv6L/Vo093pkfHCJu2XBKg+zgTT264MLDfyDCehFaFb0fXzGWJOg
	 PN3qpFAQHHA2y2a5YDjtr4fJWxWAXdLUlnLxKHZfATI5MBrxS6KWAzONonJRECD+Oa
	 PhnxgvARfgVTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53639C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253525333.15716.15427531608441570374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58579391359badf526025b80b3bf7fc25f99f4b354d03616f022c2b8fbcec5a
Date: Wed, 07 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662535253
