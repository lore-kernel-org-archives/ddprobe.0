Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A63A2F33
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C93C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685690225;
	bh=EARon7iQIfw4rnkQ6DojHM3/gts0M8GlaOZY2GpCJ98=;
	h=To:Subject:From:Date:From;
	b=s7wdhpDA2ZfJO9O34yjuLD4MKpLCS3uAMHZCC51/XqdYwYAyQ2nyVl7GX3+suCFtZ
	 CQ/xmxyavLbsRMka3+9ZzlyrC5pE0tOfAdUDmWkZDNvc20qfQKT7WSwNZ5QaJr26Ye
	 36fX59BdqXgyrsRyQ2807Qo+ttkb7K+SyObs60gObtkRePp3TDF51TCmoYrI3wcAW1
	 X4bABD8WehRvQrNNs8ngYplZk/rQSPHUA3r4y7YtiDEDHQ8v1JyX9Jdi3Mrk2vnxGS
	 JS0g2mR154gC4SbW71Q8tW4dYdFbHmFVL1WKOOwjS2qRjlKXVDmndMVx88llEno75i
	 IXADJoqcSiSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB10C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569022576.6775.15364387263250815890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519fc5d02ab4a7bef4a81f0099e5f6aa9dc897f92b6c26fb52e4cbda378978a6
Date: Fri, 02 Jun 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685690225
