Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D16624
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB62C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680667026;
	bh=CSerDbQhGR/EUENdy6cp2UtreUellY5+pHfiq8G/Zn0=;
	h=To:Subject:From:Date:From;
	b=UkDcgRWlfACdV/FiTvUSeTorn5RSTi7GRHPpVDSXhE02GhqfHmvTEb3NqnliseuRR
	 vbFTR9pbPvX6d9sma+TsxmcADvem2iHGU8WFCvLWaTxRFARAIs3k8BLWI40DRkpn8R
	 zbFCDSVoUVxuZ9MQvvnQsT4IbCheWGH3KU/TgjZGTPAA+8nRd5LQ2SpZhXAbic8/4u
	 iMp81QOzQodqEcpd6WZfFQ7pznMnWzRH8Us+Eup19iX+O6oipYXkJUI6BVrJXk+nDD
	 4V0uvc6eC5CXMLn8o/vY8o6npPD+maONoP5+WSqoSp54VdPjELmJEAVZUuGaxI5JHw
	 AK6SYD8jKuRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7C0C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066702583.17363.11581100062989869259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca16ad6f80b2d61084bd077881e5db9aed26b38606ee23f3cd58c4e66a3b94f
Date: Wed, 05 Apr 2023 03:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680667025
