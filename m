Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0310E3
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD106C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676108045;
	bh=917f0kpNdaqH6nDTcZqipvms6+MB5qzHGeSZdXQQfLo=;
	h=To:Subject:From:Date:From;
	b=GLaVWLENNCnd854tT6JHoCpYTyUKqeefAueMsrjwNYbsfJe5R2YYajVQGEp2Qrz0/
	 1simPfyHjxfVYg4KL5bOE1k9IYd9Oe4ts8KlqJQNA2M7+vbCGNMN+z5qudlsFAzIMF
	 /5KQGP7+6Prd2gdz5a/hmrZ0W2c38F063n68jooILq/Tk5keRZUsV9ikkEsaO66UvK
	 2lICGqCNduc5M9triTvOjuVz1zAdPd3y8epf9/TEeocLY3LtXsRhOYnRxGv9fMKQWD
	 IYyT07IDjzsLmfXVNPKDQc8WxqPJaEVFlNOkq/UPBZJme3S7xES1h+AN5cRffK2mU7
	 wx1aRDKtR/WQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C082DC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 09:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167610804577.18583.10392972978422447303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c36ee614261a3ad31c2198e60f844384eb768baea5164c97593bdcfa85e409
Date: Sat, 11 Feb 2023 09:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676108045
