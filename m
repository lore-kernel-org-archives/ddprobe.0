Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34797B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B63CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664053253;
	bh=ZUhT4LOWAbTfGZwCG8Wa2pPAneloVjLhf1gc1JJyzWk=;
	h=To:Subject:From:Date:From;
	b=Ai/WVCbvipP0f2oXG0FfvwrxP0aJUhzni50AvHjNczyrv/VOOfNe6J2YQX0TRZxCQ
	 /YQCoQ6aX0MtLwU56k+GdwMjutqevn78OPF71ZIXLJ0jJ8MzeLOsJYbNgAevMptZzj
	 AB7qgpkRlFIj2GXg+MRbzd3lrkm6Sv53SggtjVrxkwuf2dadUZnVZty+rd4TC2Jp0V
	 cZ8vPEIfJpdUOktG2bS/QfQuX5ACHGM+4KSd9H4bVXs8J12gME1disGQtmBVlr4bsL
	 ueCYOdnJZuF9DZf1JHKirHSdzYCW3EggLAhG0k8bejbj541CbHKkgG6ZYvOcm/V7mY
	 GcVYnSoZw6KmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C54C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405325332.14688.14675172068882072590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a26c7f593c32a56fb1885fd525b07a81c4636ad648697f9ecb700a778ebf93
Date: Sat, 24 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664053253
