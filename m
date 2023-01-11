Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0A117EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80516C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673427087;
	bh=XY/k4Hwe0qvdLKHzj95N5t7Z3h6XaIvTK2UOvxn2o9w=;
	h=To:Subject:From:Date:From;
	b=bz5zr077EwnK169Y/31Oz+fWYePMBOHWwlwqsTgl3QXN57gVkgX8obJSu2wGJ8gAQ
	 SNFA4DtCB5q0jB0zKnbxjGQqD4s33iK/HcGV1HSuOpIHt1oYufDB4KuxuUGrQhnIpm
	 ocDffVHLk5oG5urcaYW4sQ9E0ns/fBD2S9x5Tm/DHPWrWoCsFX1ZZlezqtytB5glfp
	 PrMPhjsqGb+CRlxPTuJFK4ZDNbNYYmbSn49vcUp33ZkOjoi/6GLO7cJBp+AxbY1V6d
	 /p9pLj041s9jyvmv4UY6caFgOnZWMmJsWtEbLmBqqxkWfN/MYrTj30qfIjaWPZjLC6
	 pxWcjZxZpct1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BD4C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342708740.16750.18382882898797760367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5a3e2db2470dff355458e17b001c64c5580110bf684e5c78cac8246841d524
Date: Wed, 11 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673427087
