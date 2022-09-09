Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40EC6AA5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA1BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662766253;
	bh=ovEh+vXc9w/KzL6aFtKygCzAeD+urGljD+30H2AvRFQ=;
	h=To:Subject:From:Date:From;
	b=FWFlDkeCoydSbpvwqTJvwRsYY3y1RGcoED53TB/T6MAMTc+BpkTJtgd7BVlbDk+h2
	 G0dJdU9WscNfzcq1VpPnZ+xJpv/0Z6nLoCoW0QSI3idPf1D+qcI4mqxYERYWkm316M
	 NXSyaRYw2yit72F1ViA9/q+KgOBDSPx17a5jmel0FicbB4jI+BMaVC4Q2lDtZCfd9B
	 TL8Ozi7xzGVwfUAges8c0AnsCcfnVhF8ShDMVkU7XUMREw6HoZRq2E4W6PefYqPq0a
	 ffQD4pK3zjdadzyfgoXUp1aOiCOoyTl0cUEjQWrAbFS7sa+zz5Hmy0Gl9eUFCixFfe
	 thEdmm4e8Z7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC33ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276625333.1022.4716318001878104484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a59d6e150b82aa8dcca1bd9dbf08a52fbe2c4732d206a7e58a492bfbb34c31
Date: Fri, 09 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662766253
