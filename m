Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34807E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70268C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662136853;
	bh=N1t9yW3g3qsIndqIFw98Vu9yDTXumBnPwXG53wbU8AU=;
	h=To:Subject:From:Date:From;
	b=uPBHEo5i1Z3fnPnSxhh7itR77qEKME+ydO9whb36I7dzGKr2ZwwTRSzIqEeSVyksf
	 AmqFD5gkJ+GaGf01UC5XUxdh1HY/F8g7QLe3ti/p6BPIW/xizs/kNUQgX4E7Eih4pS
	 pPLhc07NEJkSYjRpTMgYoNPKUwoXoofE5gTePagJBi5J3KH16m8Z6V0dmtO01aj9NV
	 tKPP1wwgYYs/vr2nDLrfoUXLjSYoptqGQW3Zs6YN6zglt0qp/dQA+P+rarf5fdcNwY
	 o+AuOB9x1ilDBWBzGXulnfjzYo5XOignNOlbGbpDsETMiAwL/wCzIpNNV06Ck8RhKO
	 WVgBH26GWXwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5362FECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213685333.32008.12387570167628765942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d884e16588f1a3d7e682524a073a78a6dd417729e965f2f8f200666e68bef1b0
Date: Fri, 02 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662136853
