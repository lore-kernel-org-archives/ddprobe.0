Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55471100CD
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 21:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB680C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 21:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691010728;
	bh=VlDXIbKZs/6f6nWLXLc0u8txpPkQZdKs46rtfBV2CBU=;
	h=To:Subject:From:Date:From;
	b=R8X+F2s3Ev5ZOYs7/X63gz5iGGwZc4n6tggxHzCmVRHR1/hkO+6OChq0I6mByPWPY
	 ZOk8dJ8IifjCdS3/DKjQ2xtYyeAHbz5CDGI66Nym8nr7dyZENwoEU3MstXxCyP1eGo
	 xhi8/p/CVLcSz064nPBlf7XMHipN1Vj4Pa1B6UqMnjNsDLW0m56KktPv7v79nTur2d
	 ZqDRmOp/KRyr7SiqfvIyhXwa+ztihVj7EM2zj9KpB5xLC3JF8LERYezoGuuKhRhGaf
	 k3My9szyadjVJB4L2YF+DNUeZ8j2cO9Amnzx6UcX5GOi65xar++5yZE16dDDYSniU/
	 hsaGdUQxxft4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D04C001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 21:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169101072868.6120.3625474512741070559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45acd7adf50280305812ef90a4209e0e943a688583bf0288981de657d6169ad
Date: Wed, 02 Aug 2023 21:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691010728
