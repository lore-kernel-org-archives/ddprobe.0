Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74481102
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACD9C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687068608;
	bh=GIRa6W71SWET8voQ4z4VZG8ORs7IiFhzYDA/wpJr+cQ=;
	h=To:Subject:From:Date:From;
	b=I7KJnrc4BMiuW8ytZl+JY+scoCFRS1Srr+ulqXyNvWr2OtoDEM+IopFtHR5BYHYSK
	 Vj7/9HFrm6NH1o2RgN8MFUKPc25tg1nm92th0O7jRe5P2TJnN7+2zuYnk2+JQMMmsC
	 7FDLQRAgRQogLL19PvCE6I78anVcOZsRC1T1Ioth4KyrIoXNdY8sTWobUXi4ZZufxr
	 kEu71K54BGNfc2V3z/2r7BGC2t59otxcu5f0adZXfIqQ72CtbGP0MXn7NvvNal87ez
	 I0vUdpu9NX0nrKeK9DdJsmk33SkbQxxpDHZeXXnB9RPd3Ud8g+/r3qsqQHGbuvZ0fc
	 OwcOaT6aPi2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AF2EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168706860872.14938.1396472542139777778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3b28f8a24ef08323961a9291e25688455c51dd6a544982ac902cd50d88a00e
Date: Sun, 18 Jun 2023 06:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687068608
