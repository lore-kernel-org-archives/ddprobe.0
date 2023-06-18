Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADCB15CE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8650C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687087808;
	bh=AIxjYb9mFbAEOtlzqev1M+GRvJmenHNqJg+eaWNs2sE=;
	h=To:Subject:From:Date:From;
	b=VuimiPuZPywXgzKCv0jt2PX38xRsfgoajRlZAy304zAm+ATT/NJyVe0lHayMNGJ9R
	 9YHXxe4diDUo7zAIS2JMmauxgb/6ygMX5J57uL3dZLY35gGHQ1Wyhuo3N5YvLVvJ8d
	 /312Lncff3hmRBjsAnI+vOhlAAsJAibW4GRkIu/Hrz+5f+qcTwagEi6DwqODYb1azr
	 Hl+XSYPh7+2ZusPXimVkUssTbbCiddwEQNYn0LlZXr8slJMsW5J6YeuV6Z0/ghhGtQ
	 Moe4AH474IkFBGVyBQYub2FVUbh+DuwuqGuayPbEInfStHALd16VM+IwzXcDBrgMxA
	 hX3D516HJ/fGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D18EB64D8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168708780868.28146.4967039306337749665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dd059dac2e0cf0f0860ac76fd6fb5fd2d6e536916401bbd1bf780d3331cc7e
Date: Sun, 18 Jun 2023 11:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687087808
