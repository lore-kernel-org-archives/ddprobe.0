Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF60BA45
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92793C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672867287;
	bh=fAmS9JtMIhjeq1oHp4fyE9UpI/GErCA/IUqnl19fGog=;
	h=To:Subject:From:Date:From;
	b=hmSxnX9vESBeUtVAB0aHv0aLR+NvFzxPQnXBKxGKQztrZCxyn3kuUzliuWEINQebF
	 HR0OqlDIYo7QpVB0W2SMTGT1oU1CB7kRUGqILtCEs+IgflAiHASqKD6+WHlP9v8pjb
	 5rieswm2K85KfTGWRciG97/wDPUOlNCG3H+Ymbt09KYlCZPMSg3W+hdQq6FLffx3Jk
	 t7DTNSWmWY8LGmj8ATOWeCcVQY603ErX+RslOmEBs5xz1xnVfV4JIm3sQ0CevGB4rW
	 ZsQgz5X/x1CD8ehOKbSzlEKI3ccNN5Kl4SnhLPu68BGAIZepb/QFfxqdX2SqDQctq7
	 DMXtt4wy9/SKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716C1C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286728744.19394.6226256783267046895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0eb19a8a45cb1fea1ce11e028abbcf2ee8193aa7a283aa1af6ce010050da47e
Date: Wed, 04 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672867287
