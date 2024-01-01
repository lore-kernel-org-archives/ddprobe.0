Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376EF20FD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPD2Z6yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5129C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704110296;
	bh=cxfEqfhegttk48RhIjibw6nFsNRxrzrrVZSHfowMrn8=;
	h=To:Subject:From:Date:From;
	b=hPD2Z6ytlBH50fvHvIsa47MVZffrESptQ2tCmlklcLV8SmImZDZ/mhGgnIOqJaBuO
	 8Vh0Vg5qn7AzovRT/Kkg1LHgTP2u5qJpWhzJQkAc5Qf4v9h5vNvQvlGv0qEwbAKz4w
	 WT8f0ZcJ8AkSvtvBnhm+P+RCx1thaSoQASKvciNNraYlfL4zy3f8d19veE2SwFzYSw
	 yV1e2Ljh2TQ9GEuJVf1Oi2dsb3lbZPbA5lo1/uR5c9pJ9wyK83HHHdRA82GFpO79Ja
	 AyX4lCeiOtMIASGzsi26si0dAQpPc2KaHi1UYDuHAQdmTbopmsUwzb1EWGvk+nr2Fi
	 ewatRXLsVhYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 808BAC47073
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170411029645.3415.2970500620117386829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944c0e5fdca1d27ce7231b9cf77a2e9651d38482e8451a38b2f37b15a8d97df0
Date: Mon, 01 Jan 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704110296
