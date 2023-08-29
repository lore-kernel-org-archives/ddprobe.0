Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E2917AAE
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6007C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693331048;
	bh=xIrYBv4lWxrQFbmZQWbR3xxx0jT4EBxYScZDZotsjvY=;
	h=To:Subject:From:Date:From;
	b=QxV/EH3Wskx093sdUByGRs4RVJXigMCCNMJ0rFV8jEVpd4vvign0YO919Y44WdqiD
	 jGSTx8sfbWF3iqEw6o/rF+gjldr4gh5wjkc1btZXfp1L4cksdZ6KLuhI6QOsHR57DM
	 XxhOTnx6VcAzy8pmqnWstlatpZPwrUNDO/ENw5RwLzYJAD59eDzQ2XizmYY6RDv7If
	 aDuSqIxnNnfhdbpoKBf2KGFp1DJZG089XBo/cgasVFWOf/jlJVN3fUtlmaYwr0Cj+z
	 ajvYX8ZYh7gBWceG9niFCBvMh1LHl9vyNEXwVCAKQio2GkTDpsNSGdYSmHjAd9xn4l
	 ItAm1izZA2pnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CF0C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169333104867.15198.14462531327044797902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80738081b8f531622e3281cb5aad9c927aed6859a6335ba04120e6e280e008f
Date: Tue, 29 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693331048
