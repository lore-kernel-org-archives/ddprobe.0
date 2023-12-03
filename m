Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002E329A1
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmWufQR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A173C433C9
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701647896;
	bh=NDl0C14PvoxvcLNSLJliwAJeVUEEGebiPzuTOwvHddQ=;
	h=To:Subject:From:Date:From;
	b=SmWufQR2ZT6EAStWu8XO93NcITiF1jWgu8GRYWn6PXQc71FXjspImL1PimsUnEB5A
	 39BeZ/zqS4hKdXJuLiVGQBi7h/3E1GVQ4IUiI18g0K+pcwAlF41cwdeyCZGLKKFgiE
	 1AsCktXEGRaK3uZTQtwkIYr8hGGdM9utmcdN6YV7w/hURqivnS5ydJkkpt/kegBCvy
	 UhXEuZzIUqO8N46GAj7IthP1qOF7EQsy4hlD25aap2DYOKxgmjowY5QyQVtJoT8ujP
	 Mb28Wtyu/XrtL6GRFFqVsXZ0zpcib7sPfM/A9cSGPOw5CjpyHmm5Wxb/CniF6OnGm6
	 CXPDZd5qHQV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8EAC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170164789637.13689.18078448654910828262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88d4d2ccd9f9a61730f9916c79af6443a2e1885dbc51a667d674adb6f8d6b0
Date: Sun, 03 Dec 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701647896
