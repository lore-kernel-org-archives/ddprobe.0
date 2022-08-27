Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6E028F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716E1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661593252;
	bh=dIr7YxpYpmd66bP9IkMAzYEaPpWcT6I+cbfbnmqmrxY=;
	h=To:Subject:From:Date:From;
	b=bY5gVoTyyVrZbEJv81JjQPUgCFyXoUnPWvwdzt+w4u9BGUAopvN0Q8ZdA03j8Gv/e
	 X1V3FLhvXYissknTskAEjO/3clWhVzrVODtuFuDjQ2zncmFtT7zV5MFVX/PU2mBBTO
	 DMLd5Xu1nHYN+JKQrMGrlnYMB41wXNd1LwDkfRmefB/xvtHi8ECfqC8xexyenczG+c
	 W9Ka0lfl5h4CcQuz+jukRflbk5diwK1vSyZrYKqzOoAde4pVMtyxtPFBM2BvKc82xQ
	 nLqqzbCc6NOleg8vHBM2AkZe+EX7hs+SlQ2grIri51ixockVfYnNOq2reKjluacWUc
	 w1UsEPvWR2eLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5542EC0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159325234.6792.8034859250979947749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d592dae50cda9fcfc84f269a176d148a2f2327f1d9c387ec3ad9e668c91d65
Date: Sat, 27 Aug 2022 09:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661593252
