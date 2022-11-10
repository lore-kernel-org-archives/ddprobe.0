Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC98D1A629
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784A6C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668109854;
	bh=6rltB88dKWuZ4wh66S+v01Bby2i17pgN8lkRAyG30+4=;
	h=To:Subject:From:Date:From;
	b=DchSvb3M8WVMNPNSxawQlkGtZVnkZ/08uIiJ10zB2SvBG25dVqd+pjeYEUQPAPmlx
	 zSD7uHGnREljBMgdSbP3ckdrvj1NSzzy3S9XeqgEgrOWoQ+Mk2v1RRkHLLllC0zx87
	 VHlegYphfRVY0r0FIDiD0YbJykZiuEUXvyIpAhDxpXrVer5+nxVAoEEj5c7RpfTZes
	 jhcaXmrxabcZPwlSy8Y032tk9nFWBXF52Y7FVbFTRdAfE7UWY+L8UpMgEbG/7qS1F8
	 EhF9rQqtFJ9vTCcyD/xeCUfLvMwVyuoS/jGsSSwQ6Od1AC1hAbjL5CLXB/wgZVCDR2
	 IcruWGEbIS2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B0EC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810985435.28824.2979501174913113167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db71062c1e932b022aeded6087200745627a0c27429cfbf648ca84030e75482c
Date: Thu, 10 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668109854
