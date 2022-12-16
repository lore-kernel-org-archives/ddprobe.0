Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A2636D
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80295C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671180087;
	bh=uPu2G0/io45bSz+q0vm8vq0m5bUOiWzSFNJxZTbTBGg=;
	h=To:Subject:From:Date:From;
	b=vMCI5YcmqJZzFsp3zsagU4+bmOCm/vUPMAWKrcgTRcUSSHIWTDvrsYuPXTKj6cES2
	 uET6mQ6WPEINQPVXJNqrkdSKJX2EpFz9PUW5nsyRy/UdGSJPhsyVBo/m9NK2XvFlSE
	 IOXSMX5gNmEfxN5eTJ81uLWU0wWhu4QJmCQR5g+pIPeWiZlARSGfxvYnMxMjYcRiJW
	 Qhr+8fozptT5Tw+sUE7lfhsU4x1mHsYQ0tOr+Zv+cySygqxerUCxcgjbq4TKI2LAww
	 cmnhXtqnJldyNZBwsB69IgUCx6gRuU2RW8CDmwTb36drLwcEmlEti9+2+6BGx0BBQT
	 hNCHv7imrSdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673A6C10F1B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118008741.2471.13133284955563033265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a7fd26ee614d61554306258f17b0f30860561e014a6d6ef0ba963bf05c5290
Date: Fri, 16 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671180087
