Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E3D2CAB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06EAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674043287;
	bh=NCMvvGTgx8IxhqCqrK2dZTXFSqQMPfrvofNKEnb5QzQ=;
	h=To:Subject:From:Date:From;
	b=BmayVgqrtuKozGO42XdurP1RXgqkgJD/lzi/qo/hEYccbHpoxQQv6jTcjWcZTLflg
	 AGc+j4BOBAovYqptdbgvF57VnCZlYGoN1+VqlBuVpybWLIq0fsUS7iulqTblu1fmJe
	 zJQ31ax9c9BiAIVUmDVI4OqIT2wWCGOZOvQHBNzeC+0xHK/73HJX554Oot67GH/s0s
	 Ay/9ZmkWCHpmD0H4t7pJ53ZNT+zxNZa17VIVof4DA5irvqJl9H04QSl488uL+ncf8O
	 j+ybdPacJOORR71yf1mArn2o9MxbqBTYPW1219xG2GNvSo0ULkvltypXxYQY2kyLlJ
	 8POu18bAYVDKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B075DC38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404328769.9166.2360283009563636452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5e2d497716f9b40bb2c90f7172d46ee51c042a4fb029cb355f48aad81f7710
Date: Wed, 18 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674043287
