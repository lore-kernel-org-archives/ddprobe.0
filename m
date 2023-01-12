Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05A38468
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81989C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673547087;
	bh=e3WlcNm19nDIzZgrOMQmwoY9tFpYnjYE3BFLAzaKyHs=;
	h=To:Subject:From:Date:From;
	b=t56EivKmXrLF5fi+F6nwnT7YBLpPK5hKGeu62NS0nRP6WZXoDv/oY34EyktcsOoVe
	 sUpEb2GlV7e03+8XqfOmachA79putT6Jmjohsfufw5zMRbjt6mO88cSX0+hqTkD0AE
	 Ava30qwNSvShERKkWKjRv+Pu8cczmH1CGZR9IB3Np/qWiD0qMPTc4P7diO+zQVCWSz
	 /vl8CE3Ni4zN71n0aIJd8CEzjjTalQhIHjV2uiHCJZ3sIcmu3TRmIGQNiFSe2Js3dM
	 gpOHEQ/enHxW9TA/oXysgn+FPPZqGNBz64/eDNfpzcqUUMLRI5+uwGBTw/xg5JODnP
	 dOCWC+iMCUMOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689D8C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354708741.24444.17455379011786014370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6e39e1ef38fd0cab939bdcb83e1f0fe90cd6b8b7101bd32870eda8451ca76b
Date: Thu, 12 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673547087
