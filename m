Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11C84687
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C62DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666636853;
	bh=pQoZnnQoKpl9J6uFP5Q0EdiuN8ATPP0gk+aTKkW1ZDI=;
	h=To:Subject:From:Date:From;
	b=Lq0ocTNmt9dlnaJn+L2VmL5ea5e7ZG1VNLlz3THEee3bIrQP7anErxyFE1zWChiCL
	 beRMXRNKhq7e9Sa0Xa09GnsMUN9czn5aYiN202rLwWwKcATrXOBlSm11FoHgr9AYLM
	 2bb7y2CRiNfNp+WaPxw+rhCozoPhSTWGP2mA1ToSmMQ1MAowjJg0WHPt0cR+6I1yhq
	 GemAgPSZfNdnwvJKf+ieEa4Z7iwR13wbkizdhu9ow3+yp/g/o+dxQ40VqMmOlvm035
	 bIqVba18RjhJ2alygVL+YWmRMbQZ9eJaE+UZe8+Q4r/4UiSUM2KMyqHzs/GnPHC8Pz
	 KRLWstIjcvlOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F2AECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663685332.9514.12925404871099520935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bfd7a5318f2e38636342d61e14cce3e75ed8a276f0fc85549f1d2651526b49
Date: Mon, 24 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666636853
