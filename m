Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C447E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D3DEC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670556087;
	bh=W5RjRrTNk2H6NUmQfvaCPWZ76TjTX/RKd1761W6DzU8=;
	h=To:Subject:From:Date:From;
	b=o9bNtfw7KFnFMi94Jtf2w+VXMhTT3lko5UP+67PwW6Jn9TWlnKIsqzqOpNTFtyTMZ
	 f+dD3Oq/Pk5uLfHoZ964OyS/rn1Bt5ETKw3/vj4KyVxYX+Ov7heSiHft7MbsmG6wuY
	 w8G5iGr8RJfUWgzI1Hfyv9obDtbHz3Z3KmB9fMMDufFXlmDRMefVeMmoNOUgfCRpEc
	 YhsKJ8IGhpbGrmu18kEjrquwPeTYqDmgS8YCP+Yn2gziB1DNcbPOFFTkPIhwdA3CLV
	 khMuy29S0bMz1gmCeO8wtTa1yv38Nyonn6tcVMi7mb0ZE75nt61X9VFjzoSPQKcVI4
	 SCXzEDzX6ktSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDF3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055608743.405.11292312715103154693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d67c2fbc04b49e1b911170f89acb1997b4f357a8a492b15ad65c73b5ee6770
Date: Fri, 09 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670556087
