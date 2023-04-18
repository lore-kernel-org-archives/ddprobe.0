Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCC110E7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0641C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681786146;
	bh=vqWmZw8fVF14lFw7TrT/XLaVuPAorjDD3/uhCvjo+vk=;
	h=To:Subject:From:Date:From;
	b=oQMFn9qkvArpyAX9SyRr9deZiXIXBufI8FtRorCGsHxhXepTbg3jBNFRCMKZulEwC
	 u9QklKgOnqgy5j5RgnGaCuvbgQLr95hqpoG1Hmb1eWd79s7GiL6h9oSBn2CQf7mslJ
	 vO4I+BRh/bXM1jGLVLqFKUmqy3vBGFrwz1uMT9tmNgyUcyzSmtZlmWkd8gI+gQJ4ej
	 5qbAzvXtHI+cS5mjCnCTnUvi8hCOqt4ENRmTo1wspaF2a25vcPsAgFjW/imouzjira
	 EE1UBVDrW694WZPPL8U1KH1WoaL+ByRnbkjBtW3dq5O+DSTj2C40fcN4NJFjikG1Ky
	 e8MZrfGzZGisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDCAEC77B72
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168178614582.19492.11231184803519412338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea0e01221ad08e5430d8b27410f7507c5ad62106d3c5d174fa4a6d3ba2ad7f4
Date: Tue, 18 Apr 2023 02:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681786145
