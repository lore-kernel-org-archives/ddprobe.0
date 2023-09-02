Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813DE2F3E
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 12:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD16FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693656848;
	bh=tUeCyNB64NKB4vo+ZOcBW7o1+322MdTVPxfbHa6Db9I=;
	h=To:Subject:From:Date:From;
	b=gMlNP/yDF/t7tqg0b4XggF1KSedRC6x68jAA4U70i1jqs2Ze2pQ+NCbrG6jSdUe99
	 frMeB/jEE1Q4LiNJ2csONWDMyi/br9VnhQpHv1RlYmlWQ+27s5RYIV7L+ehBHrf1eg
	 jdykiw0ai2W2OOUXEy/KK+0QvR63636GKzueqzov9Wi9IfIFiY6eEZhvNW39pmKx+l
	 jTm8Ha+OxfW2yEpUvMg2rkWBEwTIhlpnm5qJH3Cj0Pim2m8U43lfSHr6ijU4w+XguZ
	 Noe7Rwp08Tr7qF8qSWP5cqB/7ukvzkm3RzbmTTy+ULx9RSNTPxYxwJxxNOoQPG9GZe
	 DrxWSbXOr3HJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE8AC001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169365684874.19315.11019008530047516344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4788fa5fed270018ac96e9425a1be8f1026a3d76c4716b32ab6c4d1644c6fa5d
Date: Sat, 02 Sep 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693656848
