Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED4C290E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED7DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661384452;
	bh=Z7Jcyc9QHo6KbsOzwiEikm9BFbBDk9SbQ1gaf0ePBT8=;
	h=To:Subject:From:Date:From;
	b=GjPipNaoV6cGfGHK1rD7Q2sBQXt65GBhlkeRZsbPkJl39WD6hQ8Nc/SHv6Ey2R1Cq
	 +mEZ0MTVmyiJcUddPI7mFDSJjgGLCXuasWJLC5bTN7CcZmXYxUPoGFHNcOgilCYZQf
	 COOB4sEipKCIIVy5Ro9E7/PrWlqkDcHocxpEVePcuNotDe18x9yBL8X3yCHlVV9dJQ
	 +NaPRF+/r/bouzPZptJXVpFwkosfVv0Zc4a9V5jMmBDji0GOtNU4D2mr9C800n/Z9A
	 wrwHlQWnVb6ZDD+e/P/fQBANJv4GxWQTiAfAlQniCgG9EQtk8AMj0IAEtScO1u1FvM
	 BFpUyzmVTkl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DC7C3F6B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 23:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138445233.22598.9609896423070737947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5277acbdd3b5f817850c1d82d64a2582006678e34bff4dfa863211ac3314375
Date: Wed, 24 Aug 2022 23:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661384452
