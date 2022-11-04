Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B1C2F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71606C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667603454;
	bh=oFJijfv82c0rZ2NQVQn57PoY+gp8RoIyANlWm/Qxw00=;
	h=To:Subject:From:Date:From;
	b=Ls4t2p23dxGdnBmZocSIIRT1SKDJyHrFzhHltAdZn+i/M3bmDd7AxbF8XHwVIDTsd
	 88KBDvrZA/ARJnNYzGiXkd8NblPeHCWYV9ARoZbBU620mpIV1+c3Uotf4lKo5iDn1H
	 tWoSqNsVcN937iUEpPCz87aH4eWljKy10KdIOim57yvBN4YDXdFqoHLpsrI0yJjS7u
	 tY+GlgR13Y+Er5Z0ZKykU/vTaAs5uw4sE0hN7nK6+Depl1yS0Qk7/LNw2o+5aADwC7
	 3r33KjB8QXZchX6GqR5jbzV6tlNkdOgc+y/ZYtBo5WLsx2Ka8mV6RqhcYQ+QOP+yBx
	 Qc/Jdsh6xEF9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DB0C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760345433.7039.3629107813973354785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4511306cea181783d108dab3cd2bc85ce6e57b15dd194be940c3dbb3a14ebc
Date: Fri, 04 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667603454
