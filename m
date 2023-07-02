Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8778E136A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E130AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688283848;
	bh=WqHTE/mezYxvbifVZgUXM0cQ4tlkVIx936KbrqvrXFY=;
	h=To:Subject:From:Date:From;
	b=RWfRoKnFyjb1NBYk5hHbCWrkp/qgzIuhyUB3ADydQYcAowpvjI5nPVQ6Gzrpt7Hu4
	 QcaKm4xLvjoktxgaPw0p2qHj+25eAWgyh/A9GTVD2iSpmyY00ORKeu3hnROhl0dspi
	 gr/SjANRdaJRoR8CXYMYF0qAZVKFa1+lSk80iOmlDDXMimehfsVs/7kHOG2V21srXZ
	 N+T4FjfpkCz4UWfIuiYJDXqFbqZwe/1YrtxkiJiwuOSdgdjvdGuPY+f0fcAyAA79ro
	 fgTWbOKBznWp3aGCnG1p6xLTDxKNfAcvGKqgndrtFxgqhCnPRN66xhnTDDjYDcL1qK
	 qTceq+U/KXltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C161CEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828384873.22598.12762273028889802674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874b235b9f6c079243c578dbebf629e21999e0e07904c579f24ba53710ddd6bc
Date: Sun, 02 Jul 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688283848
