Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659C9258C
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC753C433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696150568;
	bh=1ILW5BXp6tdGoYxmBjWFnrzCByAGsOJYkNXbjsi9i0w=;
	h=To:Subject:From:Date:From;
	b=CkfEvPDE/Tv2tuwpifn8Nq1mKjf1fSeSSJ99czXWghp4KGCy9BHNBdkga+vk9M87P
	 3d62ybR3Yf4Te89gXl2+28Yjxu3OGMhcRQ3GPv5YmHOmQY2YaaHTf8jbv1p6bVKlXN
	 3jmTpM9/72t6uRLmmOQEHeo8Qg3q8C34rAeXX4DmPL1x0H2lCs7nuEcvzDgarVzd+N
	 ZCvBfpmSYiZ+nppy2qoGXmJpcSX7N3DH8PkKkhhbHaWtbfdIZhOOGXzAZNr2Bbbiwh
	 UH37eWYlbEQH/DpYarxM4kZgbXLPddSCSNuezSGOX/Ty/pu89qunCKxM4KuxAlkj/z
	 PCYNg128yFy1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAEBE748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169615056869.6400.6676518558583154760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fca8c9bce32edf19fe86c16c9f1cf0c3b297667ff9b6bcb4ec61470a4cff35c
Date: Sun, 01 Oct 2023 08:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696150568
