Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECB6468F
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E464C433D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663536653;
	bh=KLWBDWEvWFlx9tkU6cirS2pO1HuKa/MQgMLLgXMiiHU=;
	h=To:Subject:From:Date:From;
	b=LOQovG1JEyNdcncGJ39g1LC/Gf492OBTNGTKZgLZr5E7ELCTl4sTRvgp2ks7mwFAl
	 MOsLINuGAigIEy7mADQIp7cc832WZ9Af0YZYldhhxy7Tw02mf9fMzm1DTeSiICvSmT
	 8Bxbd5LehGcGWhf3PXx27fzItVJgyUr4XOx5x+3ur5YrYvKTpph6cKGwB4iyWRqcIO
	 6v2qXVW6v9Wv8AQeaKBYmbWWltt+gjniMwPlqyS+n+i714PSaFE5ANDEDtOCUycwR7
	 7/RgDGFfHc8zQHIDJIRXagkrCmoi7hnNJYIad98rT42JR53ie/DqfLyp/xqoVtRh8E
	 mBKV9RWJzGLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541ADC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353665332.25670.9073812787100404667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755f44ecd832191b6540db5340e629658824d5d857a6e0c3a4759f970c874b84
Date: Sun, 18 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663536653
