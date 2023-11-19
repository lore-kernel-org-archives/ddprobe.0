Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0751910A20
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFIKUTt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8342CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700408896;
	bh=BO1ymI7DwyVA6Amt6261IcQln4GvUdYSKaSZolDCins=;
	h=To:Subject:From:Date:From;
	b=tFIKUTt6sY42c3rhxhg7X43iE86L3egKc1CqNBI7uY8Sq1x10js71tK+7TEpc5E0f
	 ZpAfxWus5+oPGPf11Qd/JdMuEzmLwpijtRkJw9uSnlKDusNdSzrjWNLqVHSIELyeF+
	 5Kt97aWaoJZ7X6L6VGbF2InNtl5q/2dDQ5/H5lbb/uBYTgvl/s0KKtWx9+2rfY8K+h
	 uoZaoLoFlBqXD7eZKSwVEM52WYS+r9oLmADSNNUxLRgl8QxZ+Ta/eom/Me7FNvA8z+
	 tf1jxBJbVLXDKXpXP47G6yHexjcEU5Op06Hwp7hiC5yJvAcScW05CtECOHJXVBGA1X
	 pgZcVElPvQCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65181C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170040889637.9652.18413465102850649491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbf197b456b65f9437af7dc7393842f12ba9224e50b08da884cb7249daffd24
Date: Sun, 19 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700408896
