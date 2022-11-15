Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4D53C2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C80C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668516654;
	bh=XX0CV1igBJ3kwxSTYWT87GWcdkWs9YaVtwYVKKZxJmM=;
	h=To:Subject:From:Date:From;
	b=l/spuZsdleKckF3iuGh9ut8PvQmAsrFwXB52lfQPAdBtPIlkSaa9Bv4aEv+lxTX63
	 2Pnbog+L0LMtacI+nI80b8Iz0TfSEIn7O4tOQpYNNFm9kWxcOFlcA5/lEIPSIMleOE
	 A4J2H4hMN2MDyCD3n5slvCUIrgEfOdKk1XxPRusXQ1+FyNqZ+iqll8xR/C1Z0GCJ++
	 IKDIxzy00LHEk2GrTMnwmO8uDS54ws0QYDYlwT2J/vi60d7p7V1UygP7CRva2adlCY
	 h373nor9T0xowM/BHGfSvIqCG/9TI5GmMQnsw9IIZjjLs+xdUR/oAE3tucR/Cd1cQ5
	 SUuvjZqSOfIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CA1C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851665433.9924.1166055024706013891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4b2df73fe710c3f761483c794d16c39cc6189472337284c1f8b0b75bb740fc
Date: Tue, 15 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668516654
