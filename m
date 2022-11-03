Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25F62F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DFAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667472654;
	bh=7kpNR3xCGspUv27NfrEigNyqtglGBRHt0kDX08n9Cg4=;
	h=To:Subject:From:Date:From;
	b=OKDVgUjGBh9E6v1kdewds6QLaz5yLoE0e1/umuGEElbYEI7yGET+eQi8xz1/4Q5vN
	 fEEM/dvjrIDw2GSkdn4uP5jf+apcRuqhM6e/8GMC8ApGyylC25bR1w9ZJ8QHQnTItx
	 87mB+wUuUGkUla5DPcxcc1GRQGW4ekehAlJ0xXonkFrfH/iN+nIGAj0WGZAX/H/0xa
	 keSXg87K227hJTeW9x2ruU4rk80b3ys21Q0F/EjkfEfF/2chXx9FwsefuwhHTPQLFt
	 QiyMlBRBuWlfRcbdwSvEgWR3aqht827XTQetTu1ToT7cq+iOfBIaPjY6luBGQrp0LV
	 goeXPxHPhu2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA25C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747265436.15366.16257527771496085742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023f483234b872db71342660c56e0ae7f48989cc9092b4c1f087a9c455496e0d
Date: Thu, 03 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667472654
