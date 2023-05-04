Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63379156C9
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 20:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DF6CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 20:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683230706;
	bh=GIpX1yfEJNvlBi+EnNVEoG7RtT2M9cPvlaqqVD/U0Ew=;
	h=To:Subject:From:Date:From;
	b=LDMMI6ZN8Nn74AZk3pssUG3Zn9R2UGpJjbWdlPjt8m92ZcF20oDDge6LTFZYwAlOi
	 0NIlBF8bI2BEnVnaGPP+d93ZM08xSlKauMsBDD/tsy584cEZQRUey3iOH4udfki+aF
	 Um2v2OX5M0nIHhvWGY61owg5Ah2SuGzk5+3thP04gED+YCxO/HdLrXVl4ul+yx+GHw
	 nG1D4IsAyhEOtrv0PQStChxeRzllVCT3+6/DPRKYM9WbABnoiCnq/7maeZwm6Wusls
	 W1Dyc7BbyBb4gR11cPg0X469hxVoNEA0h+Y7ynpc9rQsIjDx+McFEaIGmT4adm2zQG
	 hPf7kFPtFad+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E51A2C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 20:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168323070592.16920.15931336104781807608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402645a727baeb37501db983442e6eca2acd56a1a853d2076c9c843496af8a14
Date: Thu, 04 May 2023 20:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683230705
