Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0647863A3
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+Id74/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7D1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702790896;
	bh=hxwj025bzQ6BYnY/ARHZ9TV41tZ//7MvlKY5uIpIdEY=;
	h=To:Subject:From:Date:From;
	b=O+Id74/aZvNvIdr5jTo4zyuym+HBbumQm2jsvYqqSAJUDjD2O1dWb+IeUOy151xPm
	 qG67X0QzyGr/5DguxihjoFdhvRVLz5xUPxqQ7g63BQvzmYkkYA+1od65m7JPOnAvat
	 fCdFQ6e+inblLNt4kva+qg3oaU8tmFyBgB/YTzVZFm8JJBDhJvXuGehdngjH3nGbhj
	 f6Bx+PawbpdJXYRsPoQrhsvc3HzkS+AR1cRWRoxlBCaafdPwUqX51U/jaOF1CZlrcC
	 0YQSfY41i1eHiG1s3tsUa1oYDRSQOQWBiZl8/GI/oSAtCaVsMARtvErzf3r3FTxBDh
	 9jJZjXwGHFuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600B7C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170279089636.23377.10950678716530510510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139ea697d18e3aab734b564c92d85759e70853870e4783c37675c41ca3e9256c
Date: Sun, 17 Dec 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702790896
