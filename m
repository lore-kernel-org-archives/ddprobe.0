Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D94420F7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN50XwGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8744BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701056296;
	bh=Tk0PCsl1mgfYHW4t7dTJzEvsnOXQxehZGym6MePdMgQ=;
	h=To:Subject:From:Date:From;
	b=MN50XwGWosevVZEIbC/EgoV7WJS7hKDW9aXxXYRd2HpJiQxFXpOph4uWjnOaay0b2
	 A/erHTwGPcGj7kS7D77Dsnak7SizFNLDwYQKl4PcQ6dtx4RPWDymE4LCSYCyzkoKgh
	 32bYdV9ZNmRXMXen91+Bbpp7tvMfvrFg8dUw6b5fuEnQfKRqgyjnrbfN1R5H/OqxuX
	 lHaRUo1cW4l/tCdsM1D5c91oUzwkJ39qwCzuOil1G09BympYZu3dnQGLbVYbR5hNwq
	 QyMSUdTxqjS2VpSGRy7QNNtMLrnP7jhCpsDqQ77cbm2m5+8lCUGGMVcU69Wl7R1pQ8
	 wKwEQr/vJYukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5FBC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170105629641.29972.5441987666103380210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb420796bcf40d439c17acf480e5e23ad721d36dc994d063c03c41d163198154
Date: Mon, 27 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701056296
