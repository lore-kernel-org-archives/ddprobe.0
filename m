Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A580361
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39D5C433A1
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684478285;
	bh=k39/XJY78axzyYGyLWB7n0nrzqjFqWQR+HRkRT/fsyo=;
	h=To:Subject:From:Date:From;
	b=GZuqTsObD80Xwnd/nMeCe70GDuoD82hIkGi6W/Bu8IkylflY/Pan4+4oH3DELNP2k
	 mi7Adrkk946bV4LA5qB7dEanQq0ldvly9lyHpOdeiTEtONjlspLpis1rEikkX6SQGY
	 aUmx9Mabu5dSELabM6plzrbOY2/3q1fwuAlQfhzLeLuWn33V9Bi/x5+rCLJ6+q532z
	 aQhXhHoJABHwrFIae25qGzZqTpFCw32sHeCfCbI06RpCfsQSILepEq7umaY1hRJDvi
	 gZNtNrKW/5Iu1X7s6d9L7OJcfd1ZC2Ms/OPS0XT6V8bnDcm6HrKObTolGmMxEXOxjU
	 uiPECfpXvLfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C00C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 06:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168447828575.10702.13518426673414482876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d3d4ae0082bd7011837feb8f469d29590297f1d25a3b3a919587b7c6952e74
Date: Fri, 19 May 2023 06:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684478285
