Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78E29456
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7nqteZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F47EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701019096;
	bh=M557MVU6YmGFgIaU1zobPUHcFg/tc/2BWTP3beCe5Es=;
	h=To:Subject:From:Date:From;
	b=W7nqteZiMmBnbkh+PrW5o7mBhKQ61bnPi9fiBojzQ/Hr7hPlOOA439nu3vt3wOjsl
	 lx9Pszr6o827NPHytT15fl1/+BWPD6y5hk/vOQbdrQf4FpVDIHkAGobbOjWctvHjbb
	 X/k4h9j9ourRXSfxKrCXm6S/qBbZNL1N7iGTfgGefTYdCwutL+x/WwREyvTr3BjUND
	 5rvUqiHIK721/mRkSs5PPvkRyzK2UMAtsZx1WIMDOUPclNYySEluVBOWWaOhF3YM9I
	 Tpfl7g0lFPhbkZf8Gd3L601mSHs8wlcJAWSJF36+lFYLEhhZlGvjueAT61OFX1ddl0
	 j82xRl4n+kyNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6891AC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170101909642.31598.8421497188918466729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6595ef19e9d178fc3b28d7e846d54882214ac0f105efc2fbb21d19d6d188d7b3
Date: Sun, 26 Nov 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701019096
