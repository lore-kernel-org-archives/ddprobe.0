Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA071FD5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ED4C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663822853;
	bh=Rp7ht7JX4a5DHcfTK3kg+zBsvBchDbqDesKWFTnQRgg=;
	h=To:Subject:From:Date:From;
	b=QcRQ340gc1TFySZUfk/GqEEjj0EttVx1x6SkQAnV8QjqTdRDC6EKjmCGXpDKMnb79
	 gas1N/h3+mCbAMKE2AJeuB2O+9KFEUywyKrgzLc2Aa3fY0YYgys9wLaebieHj3ShNV
	 R0iKYvmSVnlpDbJb9mCxPWHfyjkAZqMf2T5dp4tP+OkHqPHTxxjPtIHhmA6nPcEgmt
	 rwSA2IahL74uNFvicwK2UCHa4SrmIjQRe/XUxLnxlnXc8Rv2lwGCfBSlF6tITWHRCo
	 yHO560nrB4bQzI/8oP7AAZHYGp+rtCKJ0PIZaHHS4dd1ERGEjA9tiSTUhHnB7wOHc0
	 reuLPxgzdt90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C88C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382285332.1375.3776470592220882535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f401cac9db03dfe7c08d00e787dc19d1e40a8ec5c258141b98406b567a2fdb
Date: Thu, 22 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663822853
