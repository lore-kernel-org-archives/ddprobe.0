Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E41F2F52
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB11AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683499086;
	bh=LRRJ5ocCsTBuzu0sY8PS2/UNP3GvH/8125NhlxPs+fI=;
	h=To:Subject:From:Date:From;
	b=d8l4KtN0qFCTyro6047fipTomBSGcMPP0RQTLSfWXpyIukvCllhr1yvxPyKmmniJQ
	 OEIWi/q8nyZZ7uEn7L8mEzLIFvr+qo1MMl/EkCbsrXYummTGyrYW/9XGvHhTWZDYVJ
	 cY5jKYligk+oCgkAqneLskMMnBt75s7Qt2D3L6SYYK4MedBNB5FKZBWuYjL+LEkMoy
	 u4VMeknINjgwrYGg68m7Vd9KSqOI/iham98EZspuyoqI50du+OpNBMn3thnZO1DnsD
	 RAsEauRdMV0BxeRj35A7zT8JfMza6l12anaCWseLTQszW2nAPd/ny4dJ8uGpZ0Io+d
	 jVaihXlUUGR9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C713BC77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168349908579.968.1016747518066953921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614aa350238a748161233d67a9edd3da99bccedf49cccd15b903ae918e12188f
Date: Sun, 07 May 2023 22:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683499085
