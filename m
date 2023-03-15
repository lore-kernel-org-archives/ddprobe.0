Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B03223A3
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98FDC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678864805;
	bh=lvWQq2Z3GsspDWU61pL+rzujjrRKxORgSdZ3lyvMJzI=;
	h=To:Subject:From:Date:From;
	b=jF2Rp07tOxwg6i82VibrqDsYDykLIOfLBaSOwXeuj73lxU/JRH75GamPmdftI2bWq
	 D8+T7p4rUJ2LmD9Gcits4r5xs2SgvZBELtZmNDMCKMS6ZfYjkbWLpJnb4aQ/L4YviL
	 mD7X7GVkJ9V5hgzgaeOYciUyR7+V1nQwmqUHnbNcR08UeDrkOdp4Dm9S0R+IBYhGzG
	 fkt1646x3cjA2Pghhazl6wR2W42Ta+f8PsKlYi55KNgqDx/adiBeM0VJuKsymEqIIL
	 ugaTv1Nv0zazS1d/TQpnAJ5zHnxiwut4GLLFg/8KkYbb5ThcyHrnFaNFcJABsJYFpk
	 P6yECBvSNw7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC9DC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886480575.22697.8183649799615082565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330c8df5d73f81f61bb5416721e702f67c489efca2988111fb11fafbe0dba477
Date: Wed, 15 Mar 2023 07:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678864805
