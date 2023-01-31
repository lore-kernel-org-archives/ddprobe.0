Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4F81FBB
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E89C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675160585;
	bh=i2G3hj1G/WH2sHry1ytQoSUKIizwawBTQzIlR1yLI3k=;
	h=To:Subject:From:Date:From;
	b=DPGhGAaKJ69bWLm3mQ+rV06KJOsTFCURrZzxCA07ZFOKySq1YMEHMpd50WGBIDY7m
	 4gRkUBflxCim1P6TMHYCdrBq1VjY5KgfVmU/P7MAFcXnBEaRJ2uNybdWg9i05FBGmS
	 W9ztRO57apoL6EjbAhFQE/0zj1jN7aSPnrCDOdI981v5m6Isnd/MA6zymTFEy6Pr/M
	 oxNNLtBnp6YODBSoBg29ddTJZ8sZu/i3L+vFiOjhVtvrg8fkhG1Cvpokt8dmSdX6FT
	 1LrOvePdHVTySQ5KEFC0BRhN8lYfHysBL+c6zp5oSRIvPWoHgf+m1lQqNEg6/GXEXf
	 64keB/jWVdqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7276C636D3
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167516058578.9926.6481857390867823981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee841d6ecbca95d92900809339dce3386948154b38e7540b7eaeb6815475abe4
Date: Tue, 31 Jan 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675160585
