Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557C036D
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 14:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F218BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 14:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683816846;
	bh=2/JGy3hSDWoTc2EDp0GWe7zjyjAQaqciIowtduG9fGU=;
	h=To:Subject:From:Date:From;
	b=kVND5DbxoPwB+6/BBXrVRSJE3O7TgekmVV3HdzsFl0lCgPFl647B9g5e1ATESA1Gf
	 qeThKZAsT5QnELpK3nOPob+4lTB/H3rjQY7aUapEPvqmv14sNqaTKN92d5wZfF57Sy
	 Zos4cd3QnGlHEJkXfXTMRL5kkccGdc4OPR09K0NWWWiohXDAomoPmlu6nBhE4bugI+
	 PEiBwUXzojw0jWHX6/iSvEsu3uZST5o2J7ln4BXUMMw30h1eie+tU7QpdUm9iEj54R
	 RpUgG27Z2c12WQUSfqLM53+K3bhLyowNmy7KVQn1RY8oSezvMcmO7JnqJerFknc9lF
	 yY9jt+xpwHLtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A0FC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 14:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168381684586.17685.8987180843137510787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e2a525300c9bee77edb73d5e5c8e2e909a148a3d416c9bf1390b9a116276bf
Date: Thu, 11 May 2023 14:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683816845
