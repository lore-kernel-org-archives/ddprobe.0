Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C923523A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6909AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665475253;
	bh=IVERE3x1cVjM15iwQv9qmS1yzbN6028yRSjploXt0nE=;
	h=To:Subject:From:Date:From;
	b=SSvMsrgQQ0uEoidqCPeuux0SlpCG8pmira98onkSFZpeCBDksE5otRXATC/KcNPAL
	 Au10a5x96Mf4JVJGjw4ii8xjv73wF1JVs0xW3aTUmuy7GZFoKoiAqxtoBsTEyqDgFI
	 yU2suuRTI1tlYVvm1oulmn2o48y6PR/E3ndbR+0BDVgJAdGSekzSGtIZ+eXdLqIRkw
	 HQihKFhspy5dAPrZ3kN7jYhW0tVdEcFYZDyUoFssvyz0b6HvbhBwOsNmtGiBnV1gJ4
	 fBUnjV4nUqkLB2gZLRIuSpdFgVWgffTxJ2UFQBTzXx/oG5Xqtx8lAI0nMZmtKAtZwY
	 5CHaFjGDmpoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51107C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547525332.5676.13258862022925000729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f37410584e23f0d66da4b76f1004f7e16aceacb22075bc5e742111b379ca5df
Date: Tue, 11 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665475253
