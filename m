Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4236D31A65
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE223C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695140108;
	bh=aqcj/WAdLO7BT6z5/BZe8794JPh6jdyELycH/YEEdug=;
	h=To:Subject:From:Date:From;
	b=OcutcQcBbNJ7luc0xgNC4E5AM3Qnw6Edlsit2WnmocrfMKQjqbtbUy5u1VP03D/nD
	 gMWLn+qhqbluOXDDQjYSm1M4QtvNWasNf+5iIAA4VsM9LJeObkJSJNJCVxuFj2aHkm
	 qJ2/axuAWfXeRCeIwSYelt5S6Dtc66lyo56CdNsV/JMKV/O6hXKASU26tPLnHcD3La
	 FNWnooFTVg46Hz/lET/VDGAf0xrIRtsSDEwpaQwDiX7eIfON+gRDxUoUaTRcm5I/wi
	 SWH271Iwx5aSkzMsTtopxoLGG9fNUHhDec6uVxzpSYPTujpRIfkzeI41m8cEwZbXZK
	 yAtMwlMyGyOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A288DCE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 16:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169514010865.29395.1060902691482910128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dba0a6ab7804565d0a25cd6e35cc167ae461884c45cb61151b17472564bccf4
Date: Tue, 19 Sep 2023 16:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695140108
