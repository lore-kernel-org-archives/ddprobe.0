Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8D24A840
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 10:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33F8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684839185;
	bh=efbr1TAc6dVIb+Bj5CF7Agh0AhdQXOo5Y2OTNz8sEAQ=;
	h=To:Subject:From:Date:From;
	b=Uhcsn888W0cXQRLKbf/YaH0SInrn111aBuPZ7Cc0gOsL1bWcX/D7iCiruRyP82kYH
	 /uAeLHkDOLkaS/faEAMBGIkMTsiUg2xjVATU69S7cjmjOwMLqa1CIwbEEhIiB1m7R4
	 YIDHOFgdaqA6FeSRySvSUI4WSQcW4vwzM7E4ftQyF0HQKyQGkpewMOttqrSAC5ud4c
	 EeyL7KFtrO07MztOS8UIHRsll860OG3JxCYSoW2xuI6JkFg12wNNInhtPfLVFi5OnV
	 /CAjTAWYr9JYWYdR+yo1q8RXD8S+zYhWSEMFxtWHK6lCvS6oDSm7Nmkae4xdTKDHIo
	 V+orSYTGPZWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45F8C7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 10:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168483918579.4827.14129586043674138892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647f7ec1e0ce58e23b608dc6cc01888d8ffa46e72d501cfc7420f994b3ebab96
Date: Tue, 23 May 2023 10:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684839185
