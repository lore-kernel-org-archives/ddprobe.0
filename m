Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBEF4CDED
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzOQ7zZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A68C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703587096;
	bh=tGYH1ZkYxRARfbYx0L1YMhL0PaYaDAv5/xiTjpHBR4k=;
	h=To:Subject:From:Date:From;
	b=BzOQ7zZ0u+PElKFWBWIF5/cSvYzYKydMaGmtSVOIsEZT8wGFmef1uwBr0qhL+TaKS
	 +OM80qbsOx87M1xzG6xweFUpEZPZ88NCLgpNXRCZ8Qafu6edBwc1p/pD/Lbbr9egDr
	 gcnk/EDPFyQg3KfabCHXYPUzXcIoXP1HgpwQ2e79ZKBM314/1JH0iTer3ype/E7UUi
	 SmpS9FdbwZSWBc5zMfw3FA/4LTuNWhvd5ntcXmVmUunIwgkZoDXHGcXIXx3Vy/UcOR
	 M5iagdAGDd0Z2bo1parPu5LkbGR+/vBkOJNyX00ZvJauxbZFdF6+WptGx0YdAVK8xk
	 FAL1EAlvs+B1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649F1C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170358709640.28603.11296573938477888175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12c7231183e2d6a4d1cac17e9aaeab4a56490f1709d34a0495bca26da5d85d5
Date: Tue, 26 Dec 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703587096
