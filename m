Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1FE2F23
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E67C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663180253;
	bh=rEjHNJKQOQ2ry5xLsalD3fSEqsH9LBpe3qf/dnvRfKs=;
	h=To:Subject:From:Date:From;
	b=DC5sLeOXVMk3qnZOv8beIzWrhYRbhHqERMLeGudPgXifNuphb7WlZeqKY+11hS5u8
	 KufmS+JAvd5ydc0u8owBMSv7rXqXDtnUyViShFrSjwnoTDB8+a/Mgj45Mbvjo1bYtR
	 MS61a3qbpDZMF0WiL6ny8wXUjP2lffxrcXXGvmEq0sPouSpNgvlFPPsY3Rro8DGikZ
	 JAFrkdr2GA897Oc5uSRaXbfgvu5bVZqEVBIBWHU6Rpy1YPaRut55dA0JJT/DYbryWi
	 lkb0JtIJof7tQdb5kSK/bZAm5A3Gp8+7iH31mcSLrxdSuPax5z7Ot2gorSg1ofptlZ
	 CZBjuxfYSdBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63433C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318025339.29374.13744059645224467484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f1de0c5fb954f7c2ced159f1aaddd5a8ce35ef055fc4d7a25638917e076c07
Date: Wed, 14 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663180253
