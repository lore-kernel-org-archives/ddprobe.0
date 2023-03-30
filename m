Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C3539B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7D2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680185345;
	bh=s5xP7CjVUZoSxcG6DLEtMfKrXvlcvhZ+CSJ6Wq5764Q=;
	h=To:Subject:From:Date:From;
	b=MBR7gb02smwHmDPN8lqgOljfVMF/2PS+zlwLG4Tow/r5zfSSfAgKuZJ72vZ8SEXz/
	 7lZxDisD4VB1hw+dxS4UHHsGupK27pllitJpitMES8m0d7WYdRdTB5T0W2clVo10lG
	 0RKUEuK8PMdbTCrRJIQ8dwryvEcKkDXPQymTYBJL+XW+hijT8pVqlzEBqZVn02s3K7
	 9i06kqaMBz42LVZkqvANV3jTDKrV4/4gedapUaunHddzx8XqRBVO2D0mP0Be79Jqro
	 2lwrURMjqYC2sdKADfCtgX8AgVGJ9CHa/gha5FXRcgKBYL2Ieve+5cmZ2DY3XNGwAK
	 lC8JDTuaGPnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0960C761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168018534577.24211.13916391897271897202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe20f34753e6dbbb81d8e292cd5f502c7f1817f4a2d4f0bbedfdc1b56f28c62
Date: Thu, 30 Mar 2023 14:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680185345
