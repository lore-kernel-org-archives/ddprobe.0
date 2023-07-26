Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C36F7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 01:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCA4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690335728;
	bh=hVtljorTp9yY10O92sXxqgyacixu18dQNxTsN96W5cY=;
	h=To:Subject:From:Date:From;
	b=eEPDEZmTjW3lie8uC06yo0bXkczAMT/4eVVj9jMN6E+rrFDJ9Pn55lrTYlYVvDZeh
	 nIwrDPmCvJx8YwS7kEpepUqRtt1dJBE+x06IyVh3a2KdBPFWwS7dwVvqcS8NRAJr35
	 sUvfl0Plty/E0mrxwx0pVaXRvghEFAbxtLAcUGE85qI9zDAQ6Z1Y2gZT6CnzONAgHc
	 RFAerR9vyAWkNPwvGpjdJ4PaHfpf49rvDOznhcJ+xiFAo6uvm1SiEGHrEvwtTfB8+O
	 Rqg45YuD3UmIXCb88x2APaQF+pLVE8MiL/5o0HzXX2gad/Mdm+mNbfgfkBlMuW6gUM
	 8dA9hR8zowbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1892EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169033572870.23961.9138084009665524648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39c912b0cf53cdf2040f287c536782cc6624d1798cbf0d15f1093de92f733bd
Date: Wed, 26 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690335728
