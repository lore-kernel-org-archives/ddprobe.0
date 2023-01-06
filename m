Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA34F95DF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94D33C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673040087;
	bh=zBdrmeDZgeOejBgjTtNaK5umyN3MKwqZW6JrM5dUx1U=;
	h=To:Subject:From:Date:From;
	b=TjhgNsSo/Olw7CWXivxsjo/pIMFs0YMNTIX1GHjpcD9dkaE61/79+5/IhUjD7kO5k
	 DDB4v45xisHPg8YcFTvHsWlBaOd2J1bAOByOhpeSWrtgS+u6g6bx9bt3n1nVUrVO43
	 X6rYDu6h2wkl+Q2L6HfD6wFCurJftlykYDXWG+Nt8+jEvMOXsb0/AIMoC8ZY9/seYC
	 gQdJEnlKC2qqvVXlmOkvyy0OIXTrECXSHVPwlY1xmRrF9jn/CxK7B+bQ8D2wuabTIh
	 2BD0tPYZPCm+vih59Dcw8l4VGAmeL+rmAab0Bu5QGsdS3OmxqOkZMMx8n1wfoV2YnI
	 GEpCWIC2vr3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D75C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304008741.25860.14055811705157876120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fa4a6eebb536367c1dea5c82799f32b09003f99958cc2af37537e5acc81dde
Date: Fri, 06 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673040087
