Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32CC2119
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C176C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859053;
	bh=QV6Vi3aWsiiTw4nc8Q+8thczYxdnvbZJvId/44IB0P8=;
	h=To:Subject:From:Date:From;
	b=lFOV6S9Ab6QJxrH/I2IigSYaB/ikPqRSz/O/CIp1Hl3d5oeDuCQuAuFHxhepY69nF
	 syK2aXG+j4YgjvmDVdBKvfRZHe6QWrqOZ1YrssfxyrFsqTyrsBhZ0QYLzNF7K8q3wM
	 xSDN06iaHaNWJi1ozaXyzlktpRVsKkLX/BKEGYBhvnUhvzt326WVI87/LPvbygXH8H
	 22HZEJUSFWAhBJ2UCR7Cz/CK3kdv+V/0+BTjVsr28Bblo4a4XNLQXFzODPOwgeqRTS
	 xE4qOleUkjyn6pdMqq5fG2UV9JHpqvPwxKIlnL+eb1xrj091TjHpVacQ0GKjo6i5Hy
	 fNwCFsq8K2xgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DAFECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185905334.10361.15175507457959319777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55e6ebf98a1c559c601f6309ad680cc882a034f94e11cb56cc9a6bba2411317
Date: Tue, 30 Aug 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661859053
