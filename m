Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8252184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9DFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661650252;
	bh=UjZZpa4cqZ82hAarCntGJxcAftMfvLpEb0Py1O5qiLE=;
	h=To:Subject:From:Date:From;
	b=TxUTSQ2U+4v3BKLidf2FZybe0cRlKBVmpN3MtI8mUFjgesv9osDif8BPdKglbVak2
	 aVP47HCEO647R3ugPY9MKSN1luGowFwWTENSn9rLh5Vn5cJYAFVDk46v+jzAPlZdRM
	 0Xf7GP1QkxI6MtManovKZZn8TNglKHF0EfsrQMjc0sBmVT6OQoLODWZFIaMEvGOe4l
	 Gvjf3wcsPaFgHfAk9lKRIWpar2mm5VY1zByqmq6QHHmTaPwLrExFptppgpuO7VMR9a
	 R/py+6/28llUoBCVAP7RwiqE/hSUnJPnbToVdcpQjqX7qlLCRg0p26YgeCH0MrZC95
	 Zheq9dAyjlp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B58C0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165025233.667.12236171979130090320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bf4d7d6e6f2175881c3d89bf7d98a3aa040e23474f7637730aa2841d035abd
Date: Sun, 28 Aug 2022 01:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661650252
