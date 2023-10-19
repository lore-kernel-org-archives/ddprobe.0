Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB85186C
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbgGkNcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9661C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697696892;
	bh=uHGqc5lqD2BrtAGNNZxCFJODIeUPKtYvtv40nfChoyM=;
	h=To:Subject:From:Date:From;
	b=sbgGkNcqhmVgbUvodJ3rabweD9rOTuVPfG6qeEJwYShdpQHUyguMjoYJIpFk7zhDl
	 czCoeXmvDHo9lQD/SDahpYgsQLWRCx0uA8Y9DCL7ta+CU3DII0mV10HUn+YlLAyhpe
	 xi3HUkMHaqcKzdYI+cX8WCZJnkdN/asfmhIx/G6lZuAPSibfAGsc2FswV/TOaBh5cI
	 drW0/ukOArLtNNZhMksZa5QsCMClyYHkkTohSP2cUQgQKoLI9aZgNXZXlet96/Un4N
	 9jRHlJZ8GRFglC7r5jrUUmlMpTpa2IvMsdOQg+k5ucO+l0S/3G9UPwzt7iS2LoWTay
	 pHdZuPq2mSdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C81CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 06:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169769689281.22382.5775986980045622074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0281880ad5c8a0fc2622e39cfa7948d2b94f35f4edccdc913a279127e0a8556
Date: Thu, 19 Oct 2023 06:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697696892
