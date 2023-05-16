Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C0B156EB
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6BBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684228926;
	bh=1Sc47C4G7+//eBeqrQ70dUPM6XJ2ADVZZRSlMLBlAiA=;
	h=To:Subject:From:Date:From;
	b=tbzGntr0d9DRcVFGvp6qcXB3EdZ4fy1pHEdbpnG0vyGnfUw9v+cAg8S+Cwn5kdDVp
	 5dUszH5XR4snxIPU5OsVbdSjpLJP1qq8umSO178TejNp5aJPdQwapE2SPuRQqBIjIW
	 y27dvdxbeMH/0RS/hySkm0O7QAK+rk6jsvxT9kG+H4VRwnrZ+/vK8/BLPZVEpb2FsN
	 IKkmjNToaJxl7QYoDfXORhQg4csqkMjrXlNbrt8xfsOuJD4I456GAa9hCPM238k+zX
	 3W6GVmkl9ygq6mx98bgiUWOHNHJ6kSTH6syE3Vlb1aQCARha7gPQd5ToEaJ0urE6A1
	 FXI2KBI+dxq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD25C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 09:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168422892582.1693.1319945515613705217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14298b593838acd8e9aa75ced378aabd84801827eaa9bfbf31501da476d27ead
Date: Tue, 16 May 2023 09:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684228925
