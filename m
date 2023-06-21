Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B1015B1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5037C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687312388;
	bh=NwYdXgF9sVX70wa3ffkhKiMGjlAGPkiCKm02aCJTVAo=;
	h=To:Subject:From:Date:From;
	b=p/BYMn4HtTs0Pxj2okcO86UfFBOuHuEWnnl+VVzq6VhM7qGyXN+1WswabKdwRVEwx
	 Wd1/PnFcE3bqsONwAa0zd75d9M1aQO9LBrwu/RIqe3ayY1rxQxNIMADo2Qed484vA7
	 iHiiC6SvtcwQb5zMtCzzcyjdrr6vHcbq52tm/IGpeGkxsLSM0IyyfoLvbCyZ5vcGTi
	 mY89mRf9RHqhUnYQkxVq0uZR/lGIOYBkp85NNrRtDKJ0xzP9qSWoovw7uQLNo5h47M
	 1wfVUVrkiLV264E8bX93Wbq8EAzKWiqU1c1H9c5KKqpeVjGHFt8P8FuasJZffStdkF
	 qS2DJeByc8KRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5717EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731238873.26921.4514862113290951866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfd600a6c454e2a36120d7a49803e400d3d87dbf749a94553d36f68f4195d95
Date: Wed, 21 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687312388
