Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433477C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADD5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674544385;
	bh=deyz/UJvAltyYJZGWXCYAKyKztO3LnPcvaGLvLnqw4s=;
	h=To:Subject:From:Date:From;
	b=aJdc4hRocctEv4zPeTZnMj/YvKP05BA6f9A71AuRxA1oJ6f/ghT8zmlZA0+G+mHMV
	 lSGFl1B3trlfAWK8IUt4R5Ec1w5FSVQxznMzhRWVY6+8wMxAQUqFeve8KKKOESfoim
	 QuPO7OXLkNULsjkGIc2/JAucMWvT9Va+X3q05xNZFwpdWZjV9Y+3XkTmIf9bjJfdFU
	 Knl/pIBJ52noIvnZ4c+uDD1YH5B4h13WiW86aDPMSWBBQ2utBzsW2TyMEVNpFxk8sr
	 zhS8Axe/UGdJgsgIjexzshLiLVAUM/Mvlgt5JRSI1DO9+WuONkw+lXoDCcQDzA1+i8
	 JPNVS7PmstXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA9EC38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 07:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454438576.12204.14310477555356223135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e0f78084b0ba3c5ab1f81498fdad231c6f3a4fe1c8775704e05c9a0b8d0c8d
Date: Tue, 24 Jan 2023 07:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674544385
