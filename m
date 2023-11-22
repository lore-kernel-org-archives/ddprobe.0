Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E1C15480
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVkAso+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B55CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700632697;
	bh=5yjmDV3xyMJc2VL+EfZ0c7spjZ6jxG6ubJ/kwed5VgI=;
	h=To:Subject:From:Date:From;
	b=nVkAso+8jCvLUw+hqVsTtd4NB/G2M9mPCvqr1FLp/oeVFuyTJ95duJcr/g2Vc04/P
	 S/jlodkh4EPBZZvARLT/aBCCYWFumUTRdrFxJQsnd0NuPTYXH1Nb/aqmHJsm3VRC05
	 AtcV/gmFc0lmvCT9M22QmGfptoDSfV57UXm5zw5TCMkKGT9rVcVtdYqrRZzVDVdU/F
	 cd9uDLHcjILG5hmGlNv5HZSiCXGoRdqAuiTWk4oVhhttduALl/Zc977r3r5av+jM+w
	 7VKbYFrgOxCVkIImrEDbDSkXBIouwrLzekIGGfdHB9rT6VlVBnx3DprB93Dz8qz1hF
	 yXbDkgFaW94IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F16C61D92
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170063269640.26748.1001824000928885452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5272e7470519bc7d56fad3df78f1db057fc40100c9a4228dd8b1c927e7428162
Date: Wed, 22 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700632696
