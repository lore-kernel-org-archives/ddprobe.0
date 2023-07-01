Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA0D2E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1687C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688228048;
	bh=piojUzFLs6ZqXgdUikYGc6LCqAcLM+himF0E4/GUCPo=;
	h=To:Subject:From:Date:From;
	b=dz9e0qzprd/awWSdBmNemI9NfkWk1wm9l6v20EKy92moqHqZFGPG3Rn/zmR+aeuKW
	 JngrmiWznZ2tvTzrO82JeSDNjnSx2wAQV5q1x4uHCMEoQWnBTg7DrLdmXbgAuUn3yv
	 1iup9u6os3DzIlAiKYcHT1PQwpFWJ3yEMJnPmLWBw6PfURzwgbyJxKwrkOXfT1yw2z
	 TqWXW5Xdlkv4xvuyJ+DGElMEI4XLsVWMAR+wLqfRMXpL1T+BivJWStGCR+yKwCYNaK
	 t0jkSEk/+TClrupSlZtgkUfe9Yja3cC2C+gNUphqrudN/nE+xt7yPtDS6L7HI46Rj3
	 +tZb4y9hlPU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03CDEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822804869.11559.13499239212609061186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c790738f32fd941ab3030d6ecbbd804d5490ee1c794898377435ab07cb4ab31c
Date: Sat, 01 Jul 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688228048
