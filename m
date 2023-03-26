Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445CE3C3A
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE8ABC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 18:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679854326;
	bh=0VFUP6BJTU7kuwKgJuRaefr2c4+mTGU+7wWwyxzDLkU=;
	h=To:Subject:From:Date:From;
	b=QRgMK4S9ndvoDiISGiiJ0/3Jq5yY9Q/6tVXe6HClvWwwqhM/GQTbwyoxyy1zIbGbc
	 7Im2Rg5eFWHFja3XqY19grmrBfRWu2I9+RYgduh5U4wzFCqUyt570FH8ELxFU7o1VF
	 bXPCJEbBP0yy7ChwIXFOU7QGyEDQRDXfhq73dz4hNdiLlrFz7LAEt4TA4j9RARGMjE
	 B2/dqnlMSxVOYJgoYdPLRo2RxFtQL7Oz4ETH1H8/kwDIiVkJxLIn/Tyw2rCoin5NZL
	 bcACBFpHgCL7yhCt6ppLCfOOCr80+W+UHqRKM+9HppWRmvc6lH27ZpuWO/Gt+IfwVv
	 BJ2zveJkfiPXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2222C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 18:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167985432574.1716.6894903121269193115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d414dd8819928f08903972fd0a7d3e25417c4d062d4192ee85d24afd8ca3ed
Date: Sun, 26 Mar 2023 18:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679854325
