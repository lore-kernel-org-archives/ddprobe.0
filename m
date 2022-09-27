Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCE34C64
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E958C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664309453;
	bh=a40izXyvFyWBn1W4016vCXIabn9MXK/x9H97NKTQRcc=;
	h=To:Subject:From:Date:From;
	b=FkLmVyBiw/61aMbs6KCf0pSqrTyEivfAkO0R0mi6irTbgHvF89QkXUUYnPjDUECoT
	 yrV/MAugouhucnHFQkOrLFEmrUcMKlLjLvqE6fFGflrHVwFsrxhvDGxza5OKx0Wywr
	 lRy12OFJMMTsaFFUtPiISnS6MoKolvKZmLZx2FgJXW+EmcayZq81yKvFnTBZaR5Ne0
	 FMFB75/RnaaoNLb3ZDuF5/wKT4QntOJylh8dYFMsXsS4AKsy8pL7WC2bwimnVnS3Or
	 LZ8WxB+UDi+GcLYGhNaCX03YmMgPNzotJkgcFY1zBIW1MLJiUbPYxrEtXyxtq/pMfs
	 IurgJ2FEo6BuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52567C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430945333.9237.4855856157510388504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87a4020b049bcb4731c6e1f897e6efb940a03b5a918c162df2c6379fe511449
Date: Tue, 27 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664309453
