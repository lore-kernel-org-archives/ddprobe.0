Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB333DC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5628C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676545265;
	bh=C7ZdNU9N4F4cNllYqgN3ERK1nTpVPPaD2l8h4cvT85g=;
	h=To:Subject:From:Date:From;
	b=SFcJgk4TfbwECmJ1iCbZxIe47GiMVxDxdG4oHc0R0eqe48GtcD9zWhuW6i2cFB9wo
	 RSbGBD6IDnkPiqUfbp2YZkc4+dtx5Q3p+iXfS2APm47H2rcW5YBt7x0+vI7NVmXSo8
	 mPhoxlW/YCLSSQgTisDHt5QqstRFXtk6lqAtJjP8m8Qh5QVndh4ERiS1fpo+ZLDk6K
	 pO6XSL4Uurg7VFnJ3zsABk9dNewO4NaDVNtuDtbWJpHrdt/2MJQn4OvFA9aCLEmsR/
	 pK8P81JsTY3rneooc7PU4xdMYpUO+Ub4kE5ouoUKPYeAeAwwQTI6T2eajctypHgwlG
	 wGVx1OdyZZQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3BCC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167654526575.27044.8620515993846385461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb7feb5e99a7c563271b2c4ad3f4c8130ae0e9b1b872f4c7d4801378f49521b
Date: Thu, 16 Feb 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676545265
