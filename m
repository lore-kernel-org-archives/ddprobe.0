Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC07D66F7
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C5FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662038453;
	bh=i21OZJFoqEd2q6EBZ3nuNkowYVkY6Jz/rRZEBgoqwPY=;
	h=To:Subject:From:Date:From;
	b=YOBaaGuHMm1SKTvaVPHnumGEKrjxfpvZmC7QNOIlyumt7hayYK1wwT3sHKz0wi5zp
	 VWGS1/yNWzOEwOWauIhhnFmfHkM8E8CTJDZxs89XrE42hOKM2Fv4PNGGUnrCc8SFRB
	 lH+PsOtVjhZinWZmeQKopHpaPIxiGqvVUQ53Dj7hhVV2i1tPu8N3+ixktz2ejoDxpf
	 HqU5E5g8OVb/xdVCZbMepYrkTBWefiF4GA4DxLTvLz44n0rTre20SdxLDPw4CABhgf
	 H7tmImifZQqVEanHlk4FhZh7Qcv1VdPzqcg/IKfAvuIxPuPtYBPOXHTGYGs5C4Utyo
	 k20jXVcZc2t1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5924FECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203845335.8975.17554152515472435090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ffa0a21cbbf1d8bd98a9aed65ba605bc3c12e53bb8d919760584d10bf3e239
Date: Thu, 01 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662038453
