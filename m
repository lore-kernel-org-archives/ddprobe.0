Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9AF7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE12C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662103253;
	bh=5ic7A8+1yQ4G3bkR1I0NxItGmcadHPQJFjRvShpg4lQ=;
	h=To:Subject:From:Date:From;
	b=OxbXFcihjU0W/82Lxx8LqYx2FDm8NvRZilqCK32LOzv2CieTge1CefqXhJZCltW1Y
	 xSrBnvHRehMAecnyUy21pwiZBYZ/zrqWTQwP4a/D4qf8Bpr1zaOIZ90wQXusEv3YYt
	 znuhacTFLNyn/W6dF+uRxw+njnNjUiBvAGRsbxPRLaN6LbKdbBT2hnwKk4DF4iQ/iG
	 634MabKMB3ip2vLbRh9W5axkguWASJDf3Ke6gGjE+2txsCuRhBwTSn9wStutPlj9MD
	 6HoX0sE3D/rEVA2XczThw8ZMzQS3HU4Oksqi3xPF5vjQyYVE3QQhAMUzeGV4dnlY84
	 3z5Jr1ewsphqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577BDECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210325333.2762.15252247515732833376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946ec042b7895c1d023a9c55c9e20ff4239abb421133d6e740994757fbc2760e
Date: Fri, 02 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662103253
