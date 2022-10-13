Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF89020F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E68EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665646853;
	bh=UMdvZNQ7fGJU08wFDg/klFBS2h6TGvxTsxnzZaJvj/I=;
	h=To:Subject:From:Date:From;
	b=Jy2yDx1f1NxlI65ro6iqy+L5GUpguyL1RlPIWJi6SdFanO8F9FAsjS496qE+G7NbZ
	 vyhahEPZh+ijiAZUuEIuC/jfbeg5AN+ofe8CkSJJ7DDvVka97WHfKFYbDrhwtbvCNm
	 IEXErHTI1sMsgoqLd0dS8rSSnwEoZZ+5rWHuJT16Vi8WNbz0pTuVJO6hj/DDdtlDUf
	 OSci5NLUFC9ptlCwxDOKYn2KVp3/tmLMsMRO22uowgAauXB4dGEOw6rMpRpxlNhpJd
	 qBjqWtB19ysUIFeAPG2QcEUk+axpyhEuGfeUHQcZV6Uc1Tdmkx58/F8tZm6GA+9dHT
	 KTnT5fDRrLnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53819C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564685333.20109.18025568916138357052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675a7c4df0611714fbccf01f3faf28ffe77468b9aecfc258a999cc78c509512c
Date: Thu, 13 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665646853
