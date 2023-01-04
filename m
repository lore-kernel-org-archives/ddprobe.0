Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A47636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B077C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672816887;
	bh=P+0eyU77ACftqw36V0Wwdu6CCn4HubQxEhLUSJkCvjw=;
	h=To:Subject:From:Date:From;
	b=BeXWPAlC/l+fjrZuGlUxkvAxl1S8NMsSYna/ZQeJqPr5LW69aDZozGPvdN7RY3Gv0
	 5l5Q0DvbWKK7eQ1fPEtILvV65T+NedVOFS7fN9KsU8XoON4Qdmlibq1nA7lh4ZX/Sa
	 zDC3PaeyvMxAJiEWWOQyvEei+kyHCaT/PS/FyxrfxWk8csXhgkbFCaV0GrZdRLSkBD
	 8EEfUtIPEndNd9zyykLIvRm3YNGMaOP/uGUfrFupwsuNbbAmiVHyWm/JP7yjmfp9At
	 XPAX4EzoczdVQBRvTRFnPYH8zCQcncu1AMKKyU/zGKoUYub0Q2NKFISfkmvzCotGAt
	 OsZbJB47waqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E98CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281688744.20532.13724079517502527147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a4e408bb96a5729f04b205d4f32b9cb98e0612cb33b401618212bf36579d0e
Date: Wed, 04 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672816887
