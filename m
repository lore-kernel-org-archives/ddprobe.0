Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5482568
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE2CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663530053;
	bh=dwiyML6P4uBCXFsdHTvdTHxJyD/xA+F6juFdpS97kik=;
	h=To:Subject:From:Date:From;
	b=G4yMN/p29v4lAQzknny+8g6QfbrnnxZJGjqo7T8e1byYRT6Mt3YP7n+sYQnuLcf3N
	 rnkZ0ClFbc1GkMUk2m2kFLQSK4AJ3qQV/IyCMF/mLJUzjl+W+Ie+K+C4pLGj2FayaS
	 SXRR0y47s66J9vM0cVrdXGNRjAAU+qstZo2oLILK9T7D/RwuXXLEBakAWlOY2hvVGm
	 +QkQ3l6tFLsF2gpNVbZOg32h4Rn2HiEjgB58Wx8N5gH9QkgZXtElfS686cEUdqpuKn
	 1H1HLazM5x6O3DmrrX8xS7WzvhWadTXF7IepufEqq9Hcc+gUCWnbfx71oZfOoVQD0c
	 ArK2wCJNt8MbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54044ECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353005333.19518.12021268550481634524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f929f50dfa41a4e854b69c1944c89e5849aff279cc516bd979ab70248c6cf091
Date: Sun, 18 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663530053
