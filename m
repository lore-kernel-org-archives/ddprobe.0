Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DEA1860
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9752C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676195045;
	bh=EsBbHXUlZKxvL04xwgBFihTvDw5jZdvFGB2Tao+uT7g=;
	h=To:Subject:From:Date:From;
	b=YPXS6SzZiGXWWgg5U1gPuezxu5/sTXWSNUHIpS5aq/qRjSr7eepwwYxvRsSDwpJNa
	 07jYzjVadXbdQ/8fLUsP4M73Q6NOIyPYkA5J+zHIFSsJ5AeR95x3CIunEzJRG2TEh4
	 OQ4LCZsJTh9+GCEVwSoRQ3AsNx/XrT127ohPW0KS7AlNizOCZmKAUnlg/5F7SaSXMW
	 e+zN4NR/ubvaNaiDxxbIK7OfMhVRwTcwF/rcJmplhQYZcegLdmtYsbG3AgVJD0e1AD
	 rc4szJCOmdwcQIqgIGRB6LFSo/BcLgB7p3XGJzK3L5temCaQZ5aZSiSFaH50NxpIKw
	 nfQBZjqFKuQnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB546C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619504574.21985.1070195296128300633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3477e818464cf99fd0165d0401b6ddb2d4537f7804e3d539759fb9946d519cbe
Date: Sun, 12 Feb 2023 09:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676195045
