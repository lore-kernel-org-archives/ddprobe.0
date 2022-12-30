Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B532F55
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B02C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672439487;
	bh=mX6QHlIwCiQcVtCcYfUMAKNAi5y/x9wI+/wFQShGJvs=;
	h=To:Subject:From:Date:From;
	b=EffucIw6fjCYgDeO1ZQOYOPuld0z5KcyAmaAn22Dpa21XVl+QDOUAsa/nid74x9/t
	 OXRTll7hecqO10GlYidg9aMhWdEh9t1qOoqNTY0BS9a2bBZk09lkWnf2+Kvxh/fQfc
	 CBCFJnAWnwPYIgMGNoIkhK7v1C3NKI9KwWTS4EnwtUSguLSM3VOwE0wyX1c1Cve8iS
	 38Zl+pMBuAbySMP29o8yd3SGLXPBewUUgjUyKBNYeO2iOYdHUpnB/kkkcKDveRXEm7
	 0A5kl+CWV48HRbeTgyMOVMOKwsvc6MY4DgfZfvyt2b0SR4rpzrH7vlUf8uL281ztsq
	 RI+DFTpRQjTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6049BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243948738.4501.16190196675947228825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f19ea6793748c0a4569428d6ac9daa6dc8a6e2f2ca148e4077c996c54c92da
Date: Fri, 30 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672439487
