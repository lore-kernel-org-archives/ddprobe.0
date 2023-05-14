Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563122F5E
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 14:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE29FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 14:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684075146;
	bh=AXUVDJ6vGTGe2n6z7FVofAhJ/UWFrpIO94aLt9F4/SM=;
	h=To:Subject:From:Date:From;
	b=Y9bMEVj24PTcmFAIkXPGhGFImgYg3FKtbYCeTLPTyatTpun8tFwrF1AN2yaGiv8wK
	 +EQmAtVO3j6lKmN3+wUBgOoiqe2p7ullY248zUbaTuWuU4qqtnz6nClXmxm6cJmyRZ
	 un4rdi8HGGzezxx6S/2dNi5gM0IiZ2MZcirNvaO+GIKBl2/wqJKha/TpprU+6+UIdP
	 8fHlljSod8r5I2u+6mgg4C22e9R7KKZunWm4ck2apyU5tSh6f1jt0/vKxnDfpkcFRA
	 ytLbkEdGfOzg0pkfOqQh1UKiRWdUSsSCP43PaKeeHnFHI4UgoKPSVTEqnLxo3ZOlA7
	 3b3ejrSEYbglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D048EC7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 14:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168407514580.12778.9829023665310864116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e2fedad6835e2fbd7fa63885878f4494b68df0be88ee4b22281083d7d4dcaa
Date: Sun, 14 May 2023 14:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684075145
