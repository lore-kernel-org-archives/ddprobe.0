Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D702F28
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BDAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668537054;
	bh=JwK28jgPj5CLDSeBCW6MQxN9aTgQ6S43SZP9jSmUpuk=;
	h=To:Subject:From:Date:From;
	b=XokaU7SDoD0FGDNojIpwudTajD1OLgWadE1g6fCJpPxSx988DANrCZW1Kcvc6EgbH
	 BeH81Fd+O6/qFvQpOjRKEn6jRqSF7mcFtZltvhl47nDfURsOSTpdAFh57+47rYXOh1
	 Bri+sNatEleo50MVyOc5T/8FZU8ML1t023Dng665MAgAx6lc4gg7E907kChsXMjPvK
	 f3a/QHHQ8B+Cp9IXUzecg064ANASf8P9AY/xWPIcsr0/WiBO7AETdV4IJW8cFbmeSw
	 E7DoF1AYyogF74VlCXd/Lq9t3T3M+qqwdzbBUnEYdkQO9o8gmCiTn2vA2qvPMSJ9Vk
	 n1xPYmj3i7IDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BBBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853705434.21255.12210886022373653904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5b897116dd1dd6b4132aff5effd1e7e1218e5e7a7b688c2ae4863e8479c692
Date: Tue, 15 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668537054
