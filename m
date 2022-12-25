Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43341843
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80378C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671975087;
	bh=GOeJB/y25L7oaI0wLHkxkpvTHusJFFC1xlBm5Z9hhOU=;
	h=To:Subject:From:Date:From;
	b=uLx5RbmH/Sn4SdZuIjluqrxTjobnTAZeI/Ztz9UCtovvmLN7dLTm6d0DeohEZ6Ehg
	 L7FST2Vqt4/AOsmcxbMa9fWuDdLI07yeDlqxX8ggm3y/NznphIk5fsOLylfM0gn8XJ
	 E79YVsd9p1XTue4gJbVwNlVgvB09rPxmGTAo7pyiuWeiWOeWAzD/13PbfK8bJT0Zba
	 PHsoViSGaWBha7a1ELv00xGFQtVHvbF9DYnjOTYTCpNDe0gKHGECUf/YZg9jdTxzyw
	 5fDKtqlh4acV9swHrOq4BqnA50sy2JdOgQ8sv3fhtDOQM4nNH3KNuLbOgrRHuleW/9
	 Wh9XiEFzCDRhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6286EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197508739.9364.12051222916550678423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f898fc381d46df28ce0dcbbbac8a771f25113472ae5b64ac4516a5799771b16
Date: Sun, 25 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671975087
