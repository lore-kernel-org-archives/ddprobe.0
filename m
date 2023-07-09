Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58649ECA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD438C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688870828;
	bh=Our4hzmJL8kp7juDxgWfDZURn3SmzBkrKem9UNbq/iU=;
	h=To:Subject:From:Date:From;
	b=SMKMmNXkF2MgYMseK53MF0qqPzRoEoBwIdLgR9JkNYCTpxL57nBlhvXnyURee0v+u
	 Mr4Rds2IUJrznqgt6uny/gCrkzbf1FwsAkUeQjL6Vt4+ewYpY5/ypT9TdfG4AqdeCZ
	 wO/ylMai0CuaqUdlJ+4vPcTA27gjvB5dwDnJ2QL61ykcoBbUR64XxvoUV/NpmtBy0o
	 cs/ssf4uZMgMoTLOpX7BuNAPcfbTVYct669ONirmm9d7tFyR2RLVUXx+cVb4l6aKdw
	 gGtSlvxZa3hXUgmHE5jJHTwJBeTmQNBxRXCislwOLzldCora0hzRBPjluhDCKLHPsT
	 VuWdiYn71sF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC3AEB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887082869.29688.6704569573323653939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbc3daaf4c78a0a882831cb60e7c713516e860f1a123552d8ce687e8d7c6092
Date: Sun, 09 Jul 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688870828
