Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3980853A5
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 15:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E892AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 15:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675785485;
	bh=ZQvUd+Oa8LcvonY4k4XhBqDMaC8D9cy91f6yuXloNqg=;
	h=To:Subject:From:Date:From;
	b=fHfdP04EFsdbxCUXUv9QDS1TDJoazfRAEvgF6M94f6zSFfY/ZT+dPExePH74ovmq7
	 BddOENk95OIxyzZqa3t1pwE3SpSLIa4/IJF/Yr206Q+09PRMf0H/ebSmLVqMXiwPSY
	 jdrxrle0pJLEI0pwuEcnzAwivp92DJw5eSBqu82DIy1tFrIEXbu3qHpK75a9txeTvE
	 VkUOBA6lifHpmwNITt3zQJcmbntahmQ+S3Vcmg4TUyqeUUTQ0yjvMmd/289WwlLwpt
	 RJFbfrCqIJ4/34x0lKtL596R64r3b/FbXAf/P+Xw5jhGyKoNMKL1lK+Oxof8fM0etu
	 w+A3y3KwXNksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C67C636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 15:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167578548580.20499.8648356000991904666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa11b0d14ac9c8b4e2eb8dce3198c6780c38f4f51193d0af6a44092e6e7f6b4
Date: Tue, 07 Feb 2023 15:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675785485
