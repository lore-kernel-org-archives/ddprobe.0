Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62938D528
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD16AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689326468;
	bh=3s3K90HaeQ9RSPd8Q+bVdrMSofhOstbU9QYG4skIIyc=;
	h=To:Subject:From:Date:From;
	b=vIti77QTtMILHeeo32xII6XWW/7UX30OOv5fJu24ip0tlzZbVJLf9xDbBHo44U3GO
	 6fapiA43OCHlBDAPZlU+1k4d/1hcU8yZmqmbRuM1p5k/8MI2YB9eq1UGXbDO1LCB/h
	 33clpzrSFHhXQtybz04174wQNTrNr0Iv24O44267ClC1TpORO0xaMpHotHtm+mZfvY
	 g7uXzNR1kAXR5d7Y+Fa+3qIaNGxknMFOGDVDhrjJ7/8H5I81XOUANQUL14Ixa9RR+n
	 b5jeSNIX3NZpCb82p3UBq+xpePxSBi9+xfgwuTJhjXbHjSAr9LXPaol6OLBciTJeMR
	 RC35Qt1eHDwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD6BEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932646871.7747.16121211839994121401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadb1b9753081d87326893b07330eddd3ce95cef375bbef9a20c79b9aaaeaec9
Date: Fri, 14 Jul 2023 09:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689326468
