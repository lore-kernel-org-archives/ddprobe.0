Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F958536E
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA8lp56D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B117EC433CA
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702481296;
	bh=sVhuiGxW+IHZyJJ27jrvuEI89ZttLx/eLVC4mXpauFk=;
	h=To:Subject:From:Date:From;
	b=pA8lp56DO1mSS0kiJegpI9+zme4GtELrqeL3aa4r59Oj5hf3tO/PXN49V7/Tm4LQn
	 qJCZY+3ZryzKs2MYlSQ5KYBPYHjP2oy0Dcrp7tiEUt375s4zZAZeAPyZzG81wHEpTD
	 GVkF3BO+JYQJyj0obmMhdUWv5bMYLsE8S0TWw0Vgkb+5WdPXInny8JxyESTuIPbtyA
	 s0Q2dVenFEaLpb69YMHWq3f9mkmPPcVXP7MgqAUgQ92O6ZtyK/C/TxVTPE/Y9qbymU
	 9VYb/dcNcTKyZo9rTVySG+UkUNPKxLV6YXxojRpordtBajFLRrm3G09zmyPKV0r1Tl
	 6ll0ZLPo8D5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A0C4C4167D
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170248129654.23436.11194423934767408520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd3e6d540bf60023cf2b999688ed75629db6e34e4c6248c04fe047e1a190c09
Date: Wed, 13 Dec 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702481296
