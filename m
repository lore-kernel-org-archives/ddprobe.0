Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5417C3
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4ABC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681177925;
	bh=Cputv8r6qRCLHNGLNWiJO/Fa0pzsCT7oq2Q666NA8bQ=;
	h=To:Subject:From:Date:From;
	b=CYhkRW30pBk0PiT2NERWe4lrhy4AIigJhtzq6zVyPEjZEcjmV9riEw4Qi0f1k2XWW
	 PBgPaD1sz+qXh2RVbkMwSnHIU8N81UEP/Ver0f1nv0yJawnw3Ecjdi3GJzvojsvj1B
	 tXjqAQnVHFMzXZW/1AL8k1lXSDXcqzCJWlYAR0rlJa64qAni7fYm+OTH8lUKKT44xL
	 vraTpSZ/HEAHCnnE6Mha5le2mjEmRzmwh8Jj1lG5KdLs1q2xUiiMJtu5JEvqcrAPNJ
	 lQH1M0GBsE6cObXPc2Jod6sBb3LxUuejU/uRVcIHOJyJtgBD4cU07TRE+dsNPwdXhV
	 sxPtXqOrGy1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EAEC77B61
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168117792574.32449.654423973525925266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0473717f1ba5522e011abee759ed0e81438c33b5deed5af3c615ea3eeceb6765
Date: Tue, 11 Apr 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681177925
