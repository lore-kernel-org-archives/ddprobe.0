Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9271A21
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95810C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672126887;
	bh=uiX81K4SizJYJUus+yGvJ2KOtup8kTI++67E6u0oIUg=;
	h=To:Subject:From:Date:From;
	b=UWvYYisRDbsuWQBDtGrYlSKgaVNk5Bpcima1bqYjSAsuI9lvey7fqcxtswws8dko3
	 n/A6gglIst6ZTKsH8Fn7g3fU2qPG4JWmoOz+6eXiwsOKwfxsP+jPzXYPU3QlCx20xg
	 N0O0hpjI2pTQ75D6Oi4D2RLmB5b+RqaPL/RnnyP0L8MGcDNV643qgs663iKacfAqsR
	 uEffmwukVFrYEvTRueHkVY5ISqlA118+6Jsrbo8gWjU9TqixVYC/r4cvhZksuy0O3M
	 BUZREKc+bg1xlNun4eTE4hNx4sQQP7ct6Dceb1BPokvFZmx/zn0UOAkLV3fE4HbafK
	 4ew9e64dPD24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78048C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212688747.11008.13908824606982796423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8c7c78402824da410ec8da96d1d79cdf15e19a30feaad7cf5c2276cc9cf51f
Date: Tue, 27 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672126887
