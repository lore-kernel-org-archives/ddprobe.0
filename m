Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5382729437
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CD8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695759308;
	bh=5aoOIRVaEiMXvH05527VrMGBpX9eV03mBBy8oSQ3SbQ=;
	h=To:Subject:From:Date:From;
	b=MWqJCD5JYwK+6F1T5CXSFlYtSMEA5TmCmXKO/HyPOcebIrTa26m9uKqv5yHsMj4sV
	 s+u1Zl4uLOVSFE5IvetUHoIvSeX+v7yiYGrBPrzRfYYDsLzzL8mCUESk1zjGcH8swA
	 eT9AZD49ChlkQSPnqnGF2bNwSUU7zfkSJ05ZXmQJGEa+Pph5i0ksVj/qjjGekt8m6Y
	 6ONs83ZcwLwGNhRjM8SynkAtN+lCBE0vYag0xtO7aTnkbPtqDRclsV4aciyQ/VU3rr
	 L9mBCx+9RuVVe5cgYlCedg9b9pODcAc/gXqSlCna4MJCwH6Fcp/jXdXai72KtBv12W
	 9lcIkSDdtonHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F6DE7F125
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 20:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169575930872.13403.8177199235908205717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8617b4d2ea8444e7a6db7cebf266526f0595b9fc64a1a82693835ca193c5aea
Date: Tue, 26 Sep 2023 20:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695759308
