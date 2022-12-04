Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92AF5CAF
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6ECC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670178054;
	bh=XJsmCufFqWjlWdIPN5lYDwdDJDebiaKb2g0vBGjZbGE=;
	h=To:Subject:From:Date:From;
	b=ScCsR4ex1gyA5e4bYC83wHBb8rCs4xsFYwoe8FLzC4PaEzD/i/oU0Fmd2I1X9gJuj
	 YxBPqz3FDiNzh9c7xPxZ8v3v/O9AO3wHPP9Iw7jzuLsF76f4oTQ24D5LJ1fprLnsaF
	 Gp57K8CLhBAFyCc0lcunARIu1iLmyIaylk5PSTDSyeRm4e1dO9ri2Igh1PnzMSHtFS
	 33/msnLw+DpdoEe7lW8y2nDYGBKD/9Uifi5v5hrCNGlK+YmcduVBzzwGZlgxxTCtmH
	 sCfW18NQX16An0Q+9Dww9G1QyY/tzR6ysXp6Kiyy30TaqhnW77+UV+Wdf7wYy3RclM
	 iCHua3hQNlJHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512E7C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017805432.3516.1129176542672788450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8b421bbb044fa31add6883fa7badff37cecf0c382ec9d657851e82fb1cf4b3
Date: Sun, 04 Dec 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670178054
