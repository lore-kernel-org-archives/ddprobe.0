Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672D17473
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FD8AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678137426;
	bh=IlYpifPH36PGe/tpAUeTqmg2l4pFQTTKKr1RPa/H8is=;
	h=To:Subject:From:Date:From;
	b=ALTdAEKQn+AsIBi8dtBmvXyeUa1XhbvqQaxKMfqVytVW08+JsHrCXr0b/Epu5XnVv
	 Nex8QRdpUZWc4KeXPmP6V+GfVujXT3XVe4Hmp+X3Wne+p21Mc7m39Xh1pY7arTCk7n
	 njaQARjwc7zmGfMPGJitMsn0uaDZEy2qtYCirztXFV3HoxDEAlidMSqVuGYiaOMu0M
	 4gVlSHvOq9xF62EUpRy5pIEsGv4Hy4fiFwcS4eWBdDBfQv0ueh9X06BtjP5LH2XuVj
	 pXoRNYJDzdHWWCez4zfAAQ/5jDUgXG/hRseRjDafpJ2Bjc1IUiubN5qrZrQHrn0xpw
	 BFHwoYxqpiNTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9885C64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 21:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167813742581.13226.3178444966190817554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6b396efe7c4e62f12d4cab53fee0c2d3e00d2a08c0eaf384e1558bb143936e
Date: Mon, 06 Mar 2023 21:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678137425
