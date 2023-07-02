Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0DB3D81
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88FFC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688328908;
	bh=NIou9ya9QYM8ZzWYrziyBU/5XQWFyOkYxRbq7zJXfAk=;
	h=To:Subject:From:Date:From;
	b=rspNVKVqx69uD5FP3061waIFwwHAOU1n9OhNMHr7NF7gPAts2Rm1Bc7CS37OWeBxY
	 sq6C9PzWJM6ZA0aUEElZerIsv28JcBnYxrPsz8FMg1IGPkIpYFUBejNTHWzE0pVtXw
	 vKicHpeyK3e04d0ifsBx6i4GUakvfU3PXkdIXZwHa27NukDormRgCNmi7amgX4riTq
	 0tKn9bq4S4NbgOlKffNeXNgysR7qkkBTYr4QfQyK98hlk9goYbscHqOFsRcqCAbXF3
	 2aTL4/lzypCBWtjccjNvBf/dmOb3g0reHUMbtT5EOgu9dQuO/9KLAeaRUGNbvBpYUi
	 6+r8LWlBhoD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0BEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168832890868.10838.8173164176973634957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5926b56da2fd3c96009194e40d9f3aefc5f993f8eae99b54339d559a6ed995
Date: Sun, 02 Jul 2023 20:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688328908
