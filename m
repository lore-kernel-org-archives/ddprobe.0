Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B494502C
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1QeW/ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859AFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703687896;
	bh=M0VCY0Vdqlq5tPlISZlDZzLIWhbvnYPk8qT2QiR9oBc=;
	h=To:Subject:From:Date:From;
	b=F1QeW/iaGfXY/W7/n/38Fpqqx+ddFrUoFpMhZ50LA2U5jYh2nAH8hHajImtYIPSeg
	 NESHsL++9qty3Tyw54Lmd3rO5Uxy9mwgP8iov4sIf1ZIAkuCfggopyL0O0IKGJ9LL3
	 W+5pUqhmbrigIfl7RWL3LYYOWiqLzy/bj3tQ3hIPzcZjGssV6SVb4CvuAYTs1nYkt2
	 DHwt9mJPiUcUWw5K0IsJDyPRpiH4NVXfAJqnSwzB1Z435F5BOjNYaez/v4FTBWQaAz
	 BwNQp+iFezXSepTvGieEdo7YZDIYwtzuaDFOreMGlHdcmALC0lddn4+TXdEjm7zGpH
	 ucL6GoZrdBaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BA0C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170368789640.13407.12901243896979005670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872343a48f1e88cbbc5c135a19efb4b4d0d88ee12354a023463a088804b7cce8
Date: Wed, 27 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703687896
