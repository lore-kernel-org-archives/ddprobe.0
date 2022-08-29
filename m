Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1452104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C9CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661752852;
	bh=VpIgXT8t/iFUmu2sC0Yw81hy4Jj3HLoRhd0B5eLfZfM=;
	h=To:Subject:From:Date:From;
	b=tKnlK/AhXZtNL5GL+FbwttAmz0ERBfWAVPuhtMInPQQQVZLuGf7y/IVI0dsJrK311
	 CFbfur/M+oNckvFc/Xp8ypUhXMqApNjw5z/rgBsYuYg5IBWKia995YSf/I4MKv59dz
	 /srUI9r/OYnwAqmGaOKSsQdxxBnuXSaWF4BZK62t/5P2O05ZFwd8bnMOi1tMmxZpZ5
	 cCf5yDB85dwyqAJrjzsxysXH8VvVHdZegFm08m5Yq8jnAfv/IqtPMQ3in1jlsejzwX
	 zx9ZjViGKxOlVSPXNHF5fRfwW4A8nYnTAzgr8+9Oo69FUSH8k08/m8JxhSUPnyTDr9
	 5hQ1mke2VnXeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CE5ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175285234.8235.3884857558704846787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e434008d458f81e33d9584f0f54c8998b43feefbd5d44e42b6c91e230b240185
Date: Mon, 29 Aug 2022 06:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661752852
