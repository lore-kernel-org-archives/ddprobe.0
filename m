Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF3F7F2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE357C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686716228;
	bh=5D2QiFz7YMxKNm/OwxYutilpXBNxDOxPLFf5YKDTA4s=;
	h=To:Subject:From:Date:From;
	b=TAlyG57fY3hNRLSWPyGuQ7T1uFBAOfVgBiEVMxrs23iKdVxLxef2p2ffeqvo32DWu
	 fzdowNui0nb9NLxYvfp9fa5p0gxpDid80AkD7B0cvcA9KTOLYlhF4QXe+rp1RaG2ck
	 mNi0NiBIhl7Q7MY4QqoQ/3cChxGsfDdqIA3l/A1jfgY1XQkeIbJ92wAjqdRYDQ4nrL
	 /v4xPr79ZrJJEVLG+/W7yonBoWqP8lmwY9Mw/mNam/KyeHG7YvL2OomyqdgxeWRq+o
	 FsGe5zNyHZ+T4kOkD9rsjx7koAhb43ld7vb4+m5Yi7GMWGu37RsPMkHpduptkt6TXk
	 rFMjjVKc3JmcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10ADEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671622871.9774.2151082659706172474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c5e5d0e3ceaf0eb5d3b35d62c7e684cff0e843740eb84131afc00dc54c4b77
Date: Wed, 14 Jun 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686716228
