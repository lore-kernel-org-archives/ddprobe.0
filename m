Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109B946A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 22:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0170C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676672706;
	bh=a+JRACyCNIgKu0IBfTrObVsVO05Sl1W0Rn9bSol+byw=;
	h=To:Subject:From:Date:From;
	b=Y3MPbC1OAYNO0C6jsZBmBZO+oURe/wx12VCELGhosGEZXmEK6Biu41YJpMIfUh4zC
	 7OVx/gnZ79H8TIZuEosfpnDahhNhg6cEbC8er/tQBG+0ovYu37ImfA5Xf4yJdj1+u5
	 Rnx8Vdaavmz2r/JXzcowcdpheEFtnfeRAtgs4uYjPnl7jSbbg0qN7yEKaeoTiaeATh
	 uwaR4oBcbn0gPJcxHGNJGyUJJUMxZ+9yFaX5ZemAYoW3evWNLKGqo8sYvt4TqLq14v
	 TWOiG640Ul1QxgIPYuLprem/nQmK2vNf8mNVqYbG+SYpyzedPTQ694xt/bztNgFYa/
	 M7yGaLx2Ndwyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5491C636D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667270586.24740.13625830877772189367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa188b38a0ecb60427ab49d1912847a30829bbf72b8a3c136798a97a32b61f16
Date: Fri, 17 Feb 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676672705
