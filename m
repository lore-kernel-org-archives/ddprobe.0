Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E08E2CA5
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09351C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676409426;
	bh=4xLo+ncMg1SBNh7btZ7vtnSYuXqE/EY2YYC0ekrvT1U=;
	h=To:Subject:From:Date:From;
	b=ItI5jCfXiKAHLfsz9040UqO6TYswL7IOxqL8cyK22lJutaWv4RS/BdQxXbTg0sErQ
	 Mr62NeJf5YIf4L4PKYoOMrEsM5s/vTdQCA0KqjP0JAdAjLfhofRvQYMOGBOVkqfNrm
	 m2UqK71bvY3eOW+A7wg+/2PUImZIOPvA/NmiCsVm6E+whpG7NdioivSH+BvrL20pke
	 kAdl4H5bEK2x+dsXwSE1rqc/8Fqy62+OI9VjakyfNtYfZvLSHeFwogxO6WOjIGyAPV
	 rEJUQHL95W7Exz664OCgHyYiD40daguY7/O+ZNMreLxADf7q2+OO/SUS2rXsW4Ley3
	 U/PHwCVpmEysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAE69C6379F
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167640942587.27812.15635204912790350386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ab572a2706467ef5d18959e3be1d4e3dac31884312b0e5e2e79847048e6090
Date: Tue, 14 Feb 2023 21:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676409425
