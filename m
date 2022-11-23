Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B372E2912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695A3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669242654;
	bh=/V3o1Og2TykVv3HgMGB+EpN3ZUjVrZ4Q3IzlzaSdMk4=;
	h=To:Subject:From:Date:From;
	b=rPE7Wuh+fRcaj6SxAlnRnKIgYS/rziEfdRjV5pSzYfPTZ+Hq/5awztAsNaRv3vn5B
	 H+Ol5Ki56lO7mCTtpvCwoJ5Ect30wj2CgEX5xlsbCfH1obVXoOF2DLJ48Hbw9EbBfI
	 vbCQlVAc0JESrhcfzs9ZyYkz9cIVg+yyu5mvmwlBJm8fWIBu0G8TddEG90dFEjh+o3
	 l18sp/mBjy7l5y6fqSUinuxu91Eap+BGbDxh+36UM/So0QnK1UMM/2lpZuRLJmVGPJ
	 AOsNTot+zne8Mh8S6gmNLNar61je0JbPJ7XB2cdvSLCnmOI1OKSqaEJixszZs2w08W
	 3KN8Fhtf8x8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E5EC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924265433.32564.1616562655660770290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcf36b6e23ac2bfb5d29a0c67fde7d089c860ecdc5e43cec1d72d8d12161893
Date: Wed, 23 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669242654
