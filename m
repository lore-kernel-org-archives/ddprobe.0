Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A7D362
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB16FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684461486;
	bh=mxylL2dfYZ2/QG0NP45tz9EeRay0FsLsHYZRfH34LOY=;
	h=To:Subject:From:Date:From;
	b=cw6tXW8QsdyUOmBAsnASUHaqxTAaj+xYJCHOdjT673KcBDauRI82WShdh85ImRpwe
	 LGHH2eJt9qilWyEUZmfPd0HdVLpwwniNM6LljB7NPRyre7ls3PVaHNt+dQgbDnJ0rr
	 UEGPaT+QSK3kwfUcNB9ceMhiK+yp3/9rlPwNVP+Cixui6nUgHBAKpbbZ023MW4qij0
	 MBby8lVU0TBP0Jd/IS+3nC64qGrlileNEmvkJzxaugBk15TEVpTs++GwDFG19SQjJm
	 a2JsB2Fh9p6K2GMCDDtOv5hHVt4K/FU9rASwnlDT2CvXER4rQzaK/TfAZYkDoC+KxR
	 3UE3gyO5D6MLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC20C77B73
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168446148582.32386.6755509738064994089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36015268f7a2133a9231346490713227568df002f4d4511431630d6ab4109886
Date: Fri, 19 May 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684461485
