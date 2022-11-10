Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C470A36E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F3AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668058254;
	bh=ugkdVu7fSXQHtxkcmkg5J4Z6Fy9u+sZoavLkYHUozVI=;
	h=To:Subject:From:Date:From;
	b=oxbtVuuKAtkZs7pJiN4gPZt/5NbzCy0EgoyXswHVbG/b9JCxfL0r0btU7fQx8Pc+H
	 72XIuguCsIb06RmwJxd0yTRh9Kl/Kn36RGVRFtxsxgSbep9yZzBKurNyyGhIT5DSQH
	 3/0t6BLN2HbPw6EDSaDogy/be1GabOVx8kdwDFnrmcHPrFRcB08G6O8Kc0WHnAZDOc
	 QeRep2RB2BdwNlpN7WI0PYNRefTaW6qSnckBqBx8f8A6BK4H6euVAd2GyfRAF1jjtC
	 BCWr0/ZAHd4Cckeqp/zxySEpbytHVc3G4wWvDDHjcVGp9V0Eny66ZWf53wbmRZC2It
	 rLbigMG9ZyoTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA05C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805825437.15155.9118055880961308499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ffd9c9809820e8abd685798195181f4e1e1988033b23c469cee1e8ad64ec3b
Date: Thu, 10 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668058254
