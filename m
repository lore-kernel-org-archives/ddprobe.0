Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CE67481
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWsRi0Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF25C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703936296;
	bh=k8VmFoaZikYoO0QjaW80BRKW6E96ANMOyBEXMkmCBxI=;
	h=To:Subject:From:Date:From;
	b=aWsRi0Gw8ZZOFL/T3+WpkgMlReVQKExCy9RhnijyFGgfbdGyCS5HTpft2Ve4WaLWy
	 q1oA/5WE4VP2AzM0Q7CEGbMEE1wmsulg+umgTCXRuguFo6zbdSjjXZ8zLMAmmNvN4f
	 QYRIspabJBC/9xJkERoP+1jskRE2Yl6yvyqFvUSdVX5OmNttZougpQFcUAHV/nJsnL
	 8S39OvXyr7+P9dCLKtK78zSMB9KKOfmrZxO/ZMX4Bu8jBH1n/UHnKlQ/u1VDrkd805
	 FNkuxE9bgBpdJ0ediLaIUg0lj7azTZNVqCDrn7wB0s2BTM8umMzDVpVA+k9pcwotP/
	 bMmsLQxIzcgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B8EC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170393629638.4342.6395026484790686010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ef8212a706e283b14bbf4576d1244a2d278e7300c4c2879a98ec4a2f975725
Date: Sat, 30 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703936296
