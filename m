Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B707E
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 02:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECFD3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 02:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678847946;
	bh=k0fBqMc1D0i2WkCwwB7j1Y3v4WpoyWuZ6CKpzg6KEuE=;
	h=To:Subject:From:Date:From;
	b=R14Kny7+DHqEB1iHJISW3NQukrkgw8V/4x1SYRy+cl466XGtFGI2uTa+Kt/TKhEB+
	 Pv7HVE/LgCbIC/8VnPVvMhPtXyL3WetWrrXzNuA+KuzTtxX4/glkYX0529JZgZ0HEx
	 BSMeqVyD/nn9gaHfzt6agA04Eoe7LADbalfMBJ9vGxLJfdnw9IuzkghlUFrnTqDGAk
	 ifv7fji/KQNR8Br8rPyPxB4bMeFl4N3lGsgPdoI92fEzAuPXlBs9NlyzWTCdDbc+uL
	 sdicOIvBncPBMC2QGXWsNeX7N9qm11dWbR/YxSt/janW58mZm9rU2NVj1Dloe1pTL/
	 7p83/SZxEPl0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA5CC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 02:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167884794582.22493.5727897718006828808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a8b96ef9b5f8b0f80bc08c54b6c8db178c0434c87f9d8efc06ef2a221d0d37
Date: Wed, 15 Mar 2023 02:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678847945
