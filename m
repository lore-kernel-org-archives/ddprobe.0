Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C0819E69
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5631C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686938348;
	bh=thg6Q4aplEGLnSNlEHsGUXm0P/WIKS07ZFErI3nbouI=;
	h=To:Subject:From:Date:From;
	b=sCl1I12SODuVjelBnik2SeHW6Qb/luL3QMi3aTPJ8r4NeXBDVc9twsSq+r1OqMbbD
	 t5gfxlv+WiXBmsBZIaoMnC7b3dqvnRYO2+3REFHcDeVUywd0lLOiba6e4+PeQgo8zy
	 4waDjk8xGb9QjVRYPShfRX11iwa4ztXW5UcAVBlLi1B3YyZHDCVNmsjkfk34trQn+C
	 Xbnieh8NWGbNHVO1fY49Y4wEWg+hIswRZ42cE6uD4sil8Nlbeevn1f7DCHW4tXCa0E
	 HxO9ebRkjrWc+BUJ+lF2jC6cEUYIuhX5RkwVXnFioDuH238/ExXgb4GUn71kUGX9V7
	 3qNHGEoSCMxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C40EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693834873.5398.12445839813832540726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a66d8c9baad54fcb17b7538c854a02153fa0e63284431267b50753d2699ab67
Date: Fri, 16 Jun 2023 17:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686938348
