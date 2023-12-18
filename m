Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB3C63AA
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM/BEyzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919B1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702870096;
	bh=I2rxTG5WgRVAAh0wcx5DzwuFEeKUPWuyVdUrxOdHlDU=;
	h=To:Subject:From:Date:From;
	b=kM/BEyzJ6BFpxn2DYl4hwtm1h/bffGjKtwomAaFGmlk/8CXkorYdTsl5NsAWt3YRt
	 U5HsSnrf5oO+In8TesUTfTbtnr+ydPawOYnVJg5gtp9I3nu7vyy8A09LHosUTD00tI
	 CGywITJc9jUlqdLb1I71uBokfsBj8L0WcvZl2GpGh0eEBr0c37I/08efX0FQqlvD3I
	 3LVKK52mnr481SXe4WoMiNzwN/qOnO+6hbK1aoddpnW+2zMSqeaFyhzJMCMTPHJ98u
	 pXrOaintYWMhEptnZQnDZFeq8RxmmV0jmAl92B+KRrgUXpz3K/XuM1R2CXNiJ1L+ZE
	 k6zzTkZI37HRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD38C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170287009641.9062.2500391544593022609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb298110db661c6df3ce6dacfc0efde8bbd0c21fc1a88c08b284c61e4165c5a
Date: Mon, 18 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702870096
