Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC21C749D
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6Mwhy0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DF4C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702161496;
	bh=y5VXwGd097+6/L+aYX01fSR2FWue5B4K3kG+KAxTraU=;
	h=To:Subject:From:Date:From;
	b=Y6Mwhy0f+wivuU4oMzA31GeUSwpH9dWGSPkSH9giW06gzedLdQ8DPf61QjZ/K/BBX
	 vv8WYULad3ild6bx/lu2ZUtzNO1dSmojm6L2kb4AAfx8yxrqBwuMNy8qBg1pnulyTB
	 K8FRmZLzNWVC20tzx0Tw4Nw/PXZ/Np+rNEdl9EI7+/79P1YkzJpAcJHcEkscCnobUQ
	 YDKa8z9sTpbc44QzvnRdsjgKtPo+/fS7UbA3LmOBRVd5h1PfNkfcdE9dwM2Dxq7vnI
	 Etx/9yfJpHZ0rh7BeuwpvI8oDLaOe0bkeCsqhd4Lh1Fa/QUx2zrIduysZ3D/5gA/Y5
	 kPjkcp7i8g06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DC9C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170216149636.21691.11659825705434843914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c94c5d7829207c37c41c8e9b4aad5396fe25dd62a299204c8540153a954c391
Date: Sat, 09 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702161496
