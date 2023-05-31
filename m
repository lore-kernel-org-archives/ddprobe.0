Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37306A21
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29E4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685501645;
	bh=SHBzlYi8wVkYGjvwMMrxfg3IP1HjFRmeg3p90dnQGIs=;
	h=To:Subject:From:Date:From;
	b=RB5OZOI3zcZv/sdyKQZs5fNPV62Z3U9U39E6HNaLNSMM6v7ps3ncvOmVerVjLo+Z6
	 3MYMNFErkcJqY/XPtVXzrfdqIeiLlPAOTvA0EIVUjWrMmWdqrfrlw++Ucuv5TAmMZ0
	 pFnXlnS9fXjQy7XrAUqCdj1Rw06jMK7Vbt956lGz01+INKdmVEfHVxqUvh1nPChUuJ
	 N856oYnwP0NZooF4w2Re4v4ZEt8S3LxJiILStcg2pAaXkyvU/Jb698BGE51I2SkSLp
	 GLMpzNqnm603FOwmJti2A5SXXexT5QoWjXVWldc1twUnjJDf+AgED3VsQzoyG5cul3
	 dOd9YE7MZ4Y5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3518C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550164578.5163.7058247871938783784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f9b58a03906e85cd7a6cc4ff137681fabaaab2c4fa6f6d516efc4fc44c5ad2
Date: Wed, 31 May 2023 02:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685501645
