Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9566015A6
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DF9FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689645069;
	bh=2JK92+poPYFx+FA0e/Ey13wUuTZ2n/nmXJbtOynwZeE=;
	h=To:Subject:From:Date:From;
	b=ifbZh5x9VNJnAXtY85aRUGzOeKFFF4KsFJxq80YIl/9tUO88BfE4j23vZdGetKx2I
	 AaV21p2r333ItUdTFgFgzFbEWKXAyxMmGbxDfYS2TojmVnkOueuMIG3IvkHdKp6UOe
	 BMLfPQyoFxnwJeKvWVfi86TUDBItYhNHh7nI7JV0Jyb2zpB7pAIVIm26bHhXINCSJM
	 2DC4irAaf6SdhEgGGdsulxCbimMxz0chH/BPkQRJCKZvbnQvdcLWmcuBxgxUHr+ODh
	 Bz+9BL2BYnmTORGZ+dxb+sq7lXAcT4Sceh9kuLMH2PGL1ODUYnVYsRzdg/TP69B1gg
	 4RcERqRVk4G6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0824EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 01:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168964506883.16271.13863888437685981527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3ea40e087649b31736d43fc25d5c4167c82fc41ff0271057e4fdb257e41d10
Date: Tue, 18 Jul 2023 01:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689645068
