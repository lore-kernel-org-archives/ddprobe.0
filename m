Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B677F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74744C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662929453;
	bh=x7rXR+W/3G+iCKDi8Cex5n4K/p77nvUYbRO9TtCtKUk=;
	h=To:Subject:From:Date:From;
	b=S+wF57UEthZczPq+XMTmExBMcW2R187rzWeRQrywsNvMYS/Wxijh9IvMxp+Ub5WAL
	 rcrJUnMnUClKU+ffJODrnK0wKEbdax8DdneWYOPlTp3RQkMNyB11przRaDNlkKkgzL
	 Z8cs+4gNJMvQ+ipL4OYBtXQBO0ZG8/SCO1TpCPoOTDkYuXwexymRNU+gOOsUAcy/7j
	 2BsKRXO+/+tjYPO6wOYOzW0sX0/7MukRc8c10CxlVe3M1n7sqdckLiIXcPWGdAtgbd
	 NrUAr+MOfOWJD/97iLWvMnBhU4ZMvlVFr8Bvn1e22nbAEbKrgu8rJMOGjrO3wGH/IV
	 HPfmytfdg100Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FA2C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292945333.22717.6800262018502170747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b396c64d9bc973ba485ee9936debaea9b852065ff9082ee52a0ee15c9d3e7e60
Date: Sun, 11 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662929453
