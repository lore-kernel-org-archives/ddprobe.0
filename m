Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0AB2574
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C105C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662288653;
	bh=ZfMtFyWfEVNWG4akER5HTGv2Kp4g2SW31iq+G9gBjKA=;
	h=To:Subject:From:Date:From;
	b=WZaBDB+xT7iaDUF85g0hH+WIfhjwI3TGbOpAk+OTca+Ov4o6vjtOGgjMFpdmTV3jR
	 XRbnaUa9P8iQIOMuAg9DRoz/ysOOVMJnMkZGNH4ks4EyGN7D609echIHwACv10dEh1
	 TPQ3U1mrj5A7zmpC30uTv18kit2872TGhUEF6iKR28Lup3kdDI1XqEaxcfWYLipiRU
	 eAUY/QzJETwzqYQ8yD1hRthhQzxyNqQ7+8RqhRvn++j8aVgSWT1rF2EM4viIA2nBf+
	 End5op4xNPgE64RAXrvizASv5ORM4gzhwy79BjW+0zli8bpznLCkhhs+WIdB0VckVd
	 A4iCMBqjax7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D7BECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166228865332.26747.17115185042258757553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcf29646f01d2472f798cfc149a7610eeda5c05aae621cb4ec5a56c04f0f6b5
Date: Sun, 04 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662288653
