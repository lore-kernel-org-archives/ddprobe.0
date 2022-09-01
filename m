Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8C7A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFA4C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662014453;
	bh=PxjYpK2xdivtWUNF9+E39e3+5Qw4ZRo3fpxol/v3lnc=;
	h=To:Subject:From:Date:From;
	b=U4te/v1SOrm+TulGKQDGWEbSs1L3KZ6ltWdqpqjqXwieCcf4QIiXlWI8KYyJva2eY
	 Dvn3rA9YxEQVGxwIOLca8hhHjLkZOsmWRpe1QjSMNpgDMyJjcKEvtNs2QSy5xBK6O6
	 P4ev4Z69AlkCbCpU3Vdycvci4U1Y20bt7+UL51dU28nAl2WAAd9gNNVVtkThtSE04G
	 coq3yC8aELKmA0suRFMQRCLIq2p3eIUyL/i+ERm14C7XnGBQlDpv4Rhp0JaVK42aYI
	 FaFNLVRgmYh65xzxsxpKzUH2/4W2mVj2P4IsqBJQbg9m4EzxSLF7zODs2SkOFvpVP2
	 kxK1GwI78hEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F787ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201445331.1971.2435741164612761921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a253f3d07b620f8b1b27eb79be6a70f685af9c7cabebeacfb2a240c2a6ef7033
Date: Thu, 01 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662014453
