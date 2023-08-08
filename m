Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77470100B2
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 13:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2133C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691502189;
	bh=o1+d2cT4z4gzoEXcmhtSHPZBN+mtgVBQjaRig5GtpYw=;
	h=To:Subject:From:Date:From;
	b=iRc34hl+ksPpRa4oyfU1j6+vQ3nnmBAyCuxVvCbBzHVmw6j97xE5w42OnxaQ4b4tj
	 M2CozwQxtX92xvjQEoUjnYiJSzANcTavjDpGnxVILzUVwpe48WzxHAXxUqIE082zER
	 jDLcE6m34WTXenLQ6hwmrQ1h1gGhUE8Iwi9Dc1zLU6R4QIDqGWlUDqiCJNgtQSvjKb
	 828UacpSEEQkveagVisBTI9Uw6lHyEgQx9qB4DYqZRQHhOzbrFdZs+Oc6LbQlKfd7R
	 16SFAv97X2RyCVUzQayICsK8AUYPUrjJaRGn8LeoQHNCN60/KAHTJC5i/DKBNT960M
	 mAk9TWL95nBvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCBAC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169150218876.32286.11738900667120277734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea987ad5c754453ed7cdf94e3e2a2509eda5493f439cd8eaca0b37e0884891b5
Date: Tue, 08 Aug 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691502188
