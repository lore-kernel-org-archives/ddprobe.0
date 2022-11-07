Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC08C17C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F73C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667794254;
	bh=c0YonhxIvsCEn/iGdH28Lrvy3+LEFZ9MPh//K2KC92c=;
	h=To:Subject:From:Date:From;
	b=clEc995cg33QOBMdbtL4uGOge0cyXO/fh7o3l5SrfU/BFLL2ENcg/J6iQ4BL8eHSP
	 FgsRYzF/2zapGTe3jtehmlbCNTA0Oyq5xDbBTlStkAm18qw9QSaqNNXzgcG14tdCnO
	 JvsCq81NkDwbhsuDpg/D/zLBzHBZGhbCfUPFxhalqJRcoLAbV2cN7d+6P1FzdBtf/Z
	 +i3Qt6x6TVVS5V42BF5zgnQV5Yu0Ijyk/p/XNe/8PAMP+hQYv9kn9hf65tfsnehPvQ
	 udgN9juxzYeNEXWGf3qrNyb56cZlCJ4S6WNEP2l9uFLJBW8aNGN+JmIcxsWTzgFlZg
	 OwdOZTTu0csWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613CEC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779425438.10201.948950317220470952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7b483eaee63b09a2afbf802eba9e51d88a69494116a87653795e7d01f99db3
Date: Mon, 07 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667794254
