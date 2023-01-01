Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D951B15B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8487DC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672592487;
	bh=2c56t7y7dDjQRV69BpdlKVck72tNk6swmcViP5Lf3DY=;
	h=To:Subject:From:Date:From;
	b=mXsjoJH1Swkcn7OyCwhDoXsZOwj9cdPZQwH44BLb4bIxCSXAWrIHZ+LzEQqMZrBSr
	 cnDXSZD2+4sr7Sy3b2FIRlW/nU7KydFBkQmNXkIzp8SpYUbpCsQljcFt9+lCOSbhAX
	 fO2ci/m9Dk7ZOiGlue8WLOa9Kq1xfzuVLmfLCp5sC7Kn3wr2oa4bkW7ZbtcAlN+wCy
	 K1+En8whKKJpj+0ksX/YXzC4DSlyyryj6EyOby+XhJDw9jBsCXKKz+IYyCHGrtGMLI
	 Ngmqk2mojUrl1pHtdR2S+L6lGGKQ3pTPcIGDTdp6SoTfaOdTKFU/UeDCYggyuimMDZ
	 jbwGfvKbF5KnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1FCC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259248742.29809.943084446307941258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12063aa502de42f64e662bbfb613b3449727d8a9b3d4df737d458abd1dd535db
Date: Sun, 01 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672592487
