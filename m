Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C05414A9C
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A60C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694197448;
	bh=dZACh9IkP0wqEnbbs/1psDlIDb1GeppctHRqzlKXqUw=;
	h=To:Subject:From:Date:From;
	b=ZVsMhGagPN5JO1tmhKRHx3A3+eZJpDYNA9PkED3CedWuczZbsvNzHPBdZTxHfjLhC
	 4e8rcAOuEPKQJRhkLL2Cu10UA27lKZ+fYOwW0Sn2NE7+cg4ctRYUTDokv5OIAWFjiE
	 U/Cx4+uFPPt28UiQ2SeBKQpzBF+U3BPfqiLGp8Uq4sh73Ml5cWKdQz9r4VdGvWlDzO
	 tj9tVVcKocrmCDAhxylk630WjinEPE/SCj6kNFtdlmhDKGbhMiYIfNGjRU6f1Cpt2M
	 khcygmzZ1t3X3k+ZftH/xWxAWvYy2GeC4fVDn6fJWm30FnyQLMqcFuJbLkmklhqO6v
	 EJs9FtEQxhUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B362BEEB566
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169419744872.1988.1069721782725155666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20194d21ba298c5bf7f0d93c060eb62ec717b0c3f14d1a9e542fed656b778758
Date: Fri, 08 Sep 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694197448
