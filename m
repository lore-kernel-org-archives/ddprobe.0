Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472C81427F
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0746C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694883908;
	bh=KdsREhm+xXLkkyYNKWASnu80Oq1fJywi0JhVuyNETSc=;
	h=To:Subject:From:Date:From;
	b=P0Vgwi0SFqsleSyF/c87ZObi8I+LpJH6XGLs4k8Ex+pZ66r4/Qxx9d4ht6O21Yuyl
	 73rtPpbHLePQruwsDPiEmRDO9BgemUhcUC60Q0JJ2yQal44IgFn8LbX3WSEXGr+4U4
	 7H+A2+LFTxaSqQSO8iksVbK1DLvaEWQkGE/QlsEafRzZW3YyV7pntw8RVGz23527wf
	 eqPWhw6EbbJMs5LiAaOQwDVMffmT/5WYrk7oIMsQCKaGoBub6vCeKgctWwHvmLYSYl
	 fxUEsm6lEoH4k/AosgSYM7wRMKVwCbxJaDTVCDvo6qCLAInvD6EWD61tjKzEZJQpBX
	 Tzr0+oxqavpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34FCC2BA12
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 17:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169488390866.15080.7571688589939550796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9d2383a6cbaaf27e2da4ecd1257daea19de598b4dd9e57bc3798d5e63bcd90
Date: Sat, 16 Sep 2023 17:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694883908
