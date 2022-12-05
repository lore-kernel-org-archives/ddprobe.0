Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39373229
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF97C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670251854;
	bh=E6wqbuwm2K0RlTOSKQ//nOQRrZNYrZxOKBepmJp0FRA=;
	h=To:Subject:From:Date:From;
	b=r5AdSdn5KQI7ORemPta9AMoaq8dzjFMGR/st8xXOPPy9YpDLx8rCmPWTwSUqMWp55
	 LaHAIHoTO7G8ncGHAojT3YOdBfsD0NJ6YC7fQAclTTi22ZJZqRdSUEM/KoCO3T7QBB
	 z/M4DOaTlg1X0OSrivPj9ZDM+bOl3YjNa9MvQQjm6xuLyW/m8fxSucrV15jF/p4PXF
	 RApfujO9eNezWEa2ldDt/WpISLy6iJ7dumTJz0tKtHYYeQkg+/mAay8yrpA+JWgnhA
	 xHd47E0Nq4v3jjG6COYYPEgPQmylDB+BPZbK/mL2b7iBmtxzXDfrVR43GId53ocjSU
	 llO4wo3OBVP9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB51C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025185436.27428.14328074334489373688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644b758d8803524fc647879afa2665a1513b3e4d410e31ca43a1ef8100040940
Date: Mon, 05 Dec 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670251854
