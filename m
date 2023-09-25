Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709781C290
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD7EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695653708;
	bh=Mtc9OKGZHc/4qPzLN/yfhFGzffBoIoAZUNJkK5LPByA=;
	h=To:Subject:From:Date:From;
	b=aXvdNIQ7CWiD1FPH5Q6m2ilrwU1r9sF27QPvC3DWAhjnd8nothWFjJy4dgZcsyLj0
	 Ykc55DtQNehdDt5tvsjKKnNFiX+vhhskl6MTC9DiVCQAkZ/e7AWn2TRsBsrZjSUiOI
	 BUbQ/Ki4+auEueHZwRl4Rv7oVPyEfdkwxR4+Xj7PLn5pDdiiehkBlCivLMcGPDMN0t
	 ZrTzUkv19yeGLrBNSDsKFVwOipNv84D/fMcz4kb/Z0CPf4vULsvXjvPhRTFr+3VJtj
	 j+gpl+f/Yu3vjEyprPzyraDKBced9/+yGtl2BC2+CGgu+8gVyCzqkF2Xm7ypb23DKH
	 BYM+YZYuFEzxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF2BCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169565370875.26976.9254276978672835369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1cf56fefaae9f8fe8aa2ed1b477478e42bcc810735a4103421152220445eb4
Date: Mon, 25 Sep 2023 14:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695653708
