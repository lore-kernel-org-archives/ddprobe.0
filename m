Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ABC7E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73329C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665909053;
	bh=sAPUaRhHqnAJ4D5hXN1SeeD1qfEnJLGyaf4w2+maYDQ=;
	h=To:Subject:From:Date:From;
	b=b0DYwKQA94ncp/Qg0PNz/ZlwOdDyNqvrGVxCmbKUZAVSyIV+Gazmq4Gl1P4g6JwQ7
	 vPztBINDE/hD3t5JpCUBrvahpIguYYumIqaoAmR/HV2rQhGxQ/UDAllFshjjxDlMtC
	 tCVDy99Y/sE8+8hO+DG2n8349I74/lQK5YQ53P+l0pYpYXpQpAdMe8aGj6QHLuOs6h
	 p/BHBgX/fa6OvRlx5igmHx8LqdGsuu4elt3DMlbE6Se+G93EanSSApFNFPiUwE/2Lg
	 HJOfcD9BnSLLq9znw7xobTigvtxkEZE4YWWeZk2UbNTXE4pN6+FStqJ2/VoewdOpTg
	 fVA6vqpIHAAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58253C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590905333.27962.8608029555723997234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bfc3ba8c8506da0f39f4f83dc2eb3a7665ed85b1d25a834e978b0225d4d45d
Date: Sun, 16 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665909053
