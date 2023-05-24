Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CF96087A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B11C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684971905;
	bh=Q/P+TX+7yLSascMGSdmJKRh9GSirL7aGEoj4tqqyefA=;
	h=To:Subject:From:Date:From;
	b=aGUEq9qUtQGylaQxCdbXwCav6W7AAW440Y5dDchrdCFj1Po3vcUeJT4nL9UtD0gbA
	 0nPUwFu98dnwJc7TdVOjvr1SO6QVMfqebKUm/vd/nQTNCpSIdfD9eplfoGjv+kTm2K
	 WzSxzo79MS+sBH1SBLdmXKnl0b7++NIAyfg8u7B9LMHtiyiIVnPyN6FvhepdyWx00H
	 gONqp3r68mSr7Dufbt9jHnxZPOCVgE6FtfyhQzwNGXMqO59kYQWZ8c9LgvhE4oo3Wk
	 EqI5nnswVvB8KHhQEiCJovNNPZnnnS8kKVLpYzQu3D1tn6wEzt10tZEsfX1GjhIXBS
	 aeFxu/aTmiuYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55BEC77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168497190573.23953.16961385955282674903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e89c38857cda6c1d958c42b45fd7c9ba1ad532ecbc9b91380ef0c6dfc4ae10
Date: Wed, 24 May 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684971905
