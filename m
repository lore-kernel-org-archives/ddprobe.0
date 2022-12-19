Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A18C46AB
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE3EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671464487;
	bh=N9Xa03fIB/B/Q3GQgNKo5WJM1alB/pCoYlKDcSpt6wY=;
	h=To:Subject:From:Date:From;
	b=JKxvLvHd3tRTiOeENswoHI/p+uMfvXtrCErwglDDP4hY+5hJmpKQa6bIX68/L0QHD
	 NNmqya9jsc0p3n1/FUUxUjxePdO05xQE48JHN52fxwmyjHJ8E2BDtonQn9AvgX/cEs
	 s4viJCtXqJ9BqvWhGeIBB5CGcAP6xxQDZ5pUVriIeMtC7b6aIIqE1H5EFqud9GxbIh
	 FODP3z0VZIubNv1TXn5nAd542zACqlIhi3rowi7RwmBIFiAn3BX5hIws5ZuvhmzPWS
	 Jog5ivJD7kAtG3WLhDcxgBY3Uuc+RgYesGiP8rOHBsMunmKvH8BduBUav5NrwWmOWq
	 or3kUaTeC5rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146448757.3653.955925742078697446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebefa0211209039e5d16fd7edc1d8191b70898005666010705627190197c288a
Date: Mon, 19 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671464487
