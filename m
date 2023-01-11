Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB83D17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 834B8C433AF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673422287;
	bh=BmX6Dq+V7+pi8psvHe4IXCTOYF5IVJ2xdQamXKv+Ekc=;
	h=To:Subject:From:Date:From;
	b=l0vJCgQvhdvEc0Txi7YzMOYGc8EPUTdlFyfHBMnSpIydxnQlxPpb2irCYwmSWDnpZ
	 AyqKtUI6ShSzIGfB5wzJB+ZnQtfoapFfFjY0AmJsvS15Rl3/sKqx4GHDk6EabnS+H9
	 wUR9qfUkYl1cwpONjlwt2gXSoEJSSILt8yoKMt4xcb96NGKoRf61UtCH3yg/bu/9ob
	 NXfAtW4bCJwGK0H+evEG9E/qsYD4PIc5RqbounWosrNQVEz3cZbum/LieYDtfuqfcx
	 owD+R2/UK0b/7IUIzvanE0lTIPn1862R+TFPR1nMISsvyqHMgpOR47s2VmuyHqSPz3
	 Np6AWntroM0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67439C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342228741.9836.10054434385309878946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dedb3e9041eab189f377cc527546715d21abac3ad00af99a4f320d73e2ae5c
Date: Wed, 11 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673422287
