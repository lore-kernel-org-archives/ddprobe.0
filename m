Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17B610E8
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B6CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671437487;
	bh=AZCYHRU4fythOpc5VAnx+Zf5MhGyAD9WRmwzd5A8t54=;
	h=To:Subject:From:Date:From;
	b=OvZ31/9HH/BOaUGLwrLLZ0giqE0VA7aXFTKtEQLcDCjJNWgdIKhQ9+N+fMFtG5cWy
	 VKnFOEgbBMq+9r0i+9eTz+M7wNsdd1/Reg4gDlecraAkmv+Yw7Rt4NnlDpSv3LiBKE
	 MW/octUL1SO0D+/JrSCBUCyoF6aBYCr84H0l/ByWNwWtUfyHbsnDfJSpbq3GhezHhj
	 jgw2o4t6pWMsV82RLQtIP6jAfmAadTBTD7FU/6E4Q5GJhDbZ3yIxEzAIsuDemc7UQS
	 nFKfuQwZ+cK8Y3nkeIn8EycRUNhnxa+ATLV+Yi0tpZ8q4cQdrsBgXUmagC5WTGShvK
	 14Q3J1uFGCnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6487AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143748740.32749.12372696200496446812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc0f1da976ce1a3ebedb30adf12802936029d5f34f18fc3ac58cc6b79578599
Date: Mon, 19 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671437487
