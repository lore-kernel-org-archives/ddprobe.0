Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7AA1102
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744B6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663764053;
	bh=gxpEUGQgqjg9ZwB6vNntu2y4CP9/bJw0gqPnQeSLx0Y=;
	h=To:Subject:From:Date:From;
	b=P8CVtub7Sc2bNA4pUMaj6k4ubw8ZziKai5SljmOMTFI9fays1pNZ2XPUJU2bOyt2G
	 Ag745uT4ibaknFg5ZyQaTDfbmMhWjTF0Gv/FFLB8pqlVeOB3pJDU8DAFTx4NbGLBHU
	 rP4R5x2JfajEtlwHynaBvgLp8buzdd0xnQoqDJ9p5tboGIo2yphriO0KNvtF1kwKKI
	 y8QN3OgumOEoFKkxu+SzgERqR6GXuKHeOq/4LEw31Nk6prKmHtu4mEUqGBNqD9hMtw
	 QyMwJmN49J+o5RcCXzlgXLwFey21hVFc6cZSvhzgeAzHy3UhiRd4HQQDrRDjBZUhC/
	 vzBrYtG1gfr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580BEECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376405335.28946.13124911862852973771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51cdc9162b26168a5b1b998ee5e41030c54c9e80a20c62101093c727f6bd24b
Date: Wed, 21 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663764053
