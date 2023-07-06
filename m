Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528957F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92B4C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688604428;
	bh=WpW2IpLV+82az2LGuUQzITdBVXAMM5dS0hKZ/mhWEoI=;
	h=To:Subject:From:Date:From;
	b=IrTn7Icl5M77uWsH0lNBiaWuUu1/stUjQ2ki8iJEtCJbnFzCvLHjVk4Q0rG51mJjM
	 03nyFTsterRlNyWxv/1srSMoRll/bKx+OfchMxsC99QR+2GzmbW+w2H2D7wJYEdvOp
	 3hGV3joqflvYr13RH3b/hinqLV3MrcLoPE/nzdLLhyhw43tmOv7w24EXoJ86XmkgY9
	 jCL6ePDDEbIVSbd5TaY3P8FG3D1jOuAwhK96wUFhvkjxBAIyPru8eGU1QSBa7scCqP
	 3h5tsmc3oBVMmj/QFftZe6W3WOf9+7BnSO+bXZ4JvaHxdyZwyK1kSzQ4PdPhcN8kHs
	 Yc4Pa+2XCLwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC48EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860442870.22963.17653521910131273471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a9109d924ab4d25e8d4112cb842f4fae15bd5fbf0747c3732ee0276d215ccb
Date: Thu, 06 Jul 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688604428
