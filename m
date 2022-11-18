Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5F2182
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6A2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668731454;
	bh=S3CEijUs8PCVP3tmbfbZ4MO/hawmRRizC+xkxCssx54=;
	h=To:Subject:From:Date:From;
	b=jcDx8F2y3fze5HZOQfVIFqIt8NYcA5k9vf1YOgvBnSJiuPXK45w6f1L5feF83Sp+e
	 Iox8aDlrMsW/E/KsJJsmNdU0MGLblqSLDf85X2bi6oBJGhWgY1wNqk3cJ1MUxYvGpV
	 ZIIAiyl2+aJ2g3h82OoBcsRQIp96Ga8LcQoKt9FNptemwgm3lGJS2END0XPEAjQUlW
	 g9HFFB0c58YWgXOhTU4WjG0wHy9Pyp+ILiN5PvZ5Zu0dWKZe5LrprvpiqvTaE87EZP
	 97t6/qi5BebuicHPSZolKAIn6Gi78JZ1QWGEY9iIQn2Oe2D9WZJV4AB2qsPoZQqFEu
	 ORkRMmuQAHvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61359C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873145438.982.880778620276334189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f16a536442f995c0dfb7dea3496ea9f0694bf1c0341312cdeb083ae965c7de
Date: Fri, 18 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668731454
