Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72381395
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F1EC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686022925;
	bh=vcI9IcivEDsPaROuc7yDsWJ7qQQZqadShTah6t1EMAk=;
	h=To:Subject:From:Date:From;
	b=CArlV7inJ7YVISYNl3VpTXq6RmSG6f7/9AWf5SpfZc71skuTrFF67s4g1FZVW8jaE
	 GUzwN+qLcXsdcm0SVI0+1FF2/CHVMz1joO4swBz9MKksbxu/WAvc6irbvXRnXSaCcl
	 /q+0u145B3KayM/1ZkUfEgbhv1Os2NQ9yKeAAX4+d0D0jP5Cym49N78LbBJGncO7OI
	 Z1S4RTbgBrGjYmNlUtkno5gwe4e7BriuPH7YV/rvj+TSsUyOSjdNaLvViFRBmaPLdt
	 2p6pGPgeXqB60ClzKab0+9CIkqxE7FpgkzdZazSaaCbfL2Gv/631R826ikOqi8JoHU
	 CABhD0YtUeosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E13C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602292577.6804.2669331629623606775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f239e0a2f0802f1d139648a3bc40cf3d5fc5238ea7284462717aa4e3140c98c9
Date: Tue, 06 Jun 2023 03:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686022925
