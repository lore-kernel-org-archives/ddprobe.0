Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599D9191
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D1CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682830566;
	bh=Gw7CEX7qpY4rccwA3BjiJxFtvLJzZRttZZrnJ/DPvAg=;
	h=To:Subject:From:Date:From;
	b=vQGAIIay4d7r2hy+/ABVVjoC9gvsH4ghki97xoFsaBqqeIC8XjZFf99aFE95Y3Iut
	 WBmBJRo40VJmvMHvQ4nIH7tFfrzEabXiJRjoY4fz8M+PV1bfwOKQRLAxqL6FbUCjzW
	 sk8uYmv/9ZEiFqke1QiNmJ9lvF4gGKHuXjJaIKmb+KFyxRTdmgjr7P+PtmTxBc+cll
	 76ooyB1EjgHet6OPnzz/htoYkK0RpLH1pHUIzDUcKfRVtAtY9oQSCC1bit6O/4H6/Q
	 lpYTsinKkvfQ9yQxdIpq/wVY1ru0oJNjtrDoD6UVG4rWqA55wzZZsImo1+LN4Bba1G
	 k9cxZJDR/T50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA694C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168283056584.7908.967171214450409764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da557b066443e40116134bc9b43465b6a39eb08ece62415f371e9b13add85581
Date: Sun, 30 Apr 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682830565
