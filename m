Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8A52F47
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C656C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670194254;
	bh=W9nO8178JPK/RTYa6+ubYpA28ZiyAiVUJKGPYLkkTHA=;
	h=To:Subject:From:Date:From;
	b=DTM9wgGmiTcbPKu8eCGbSFtYCIDFVGVUxSE1dLI6DyGD7oQY64ExE5HbCv/UlKcMJ
	 V86VKaSCPfDLWWUgcYNAdR61vvIv1/2wnOOLES6VHYjDvh8nT+iXtdYYvQ43EQJxCe
	 9CEOVEjRvcZO/aleItKpgLtZTRVJ4vbP6zvbh7w9QHqRUHkMfIZ9yz3v7+2fVOxZbp
	 oBY77NrH2f0n2+KL7lnhP2HpxuEf9ZDNNMmYXUq9MrlbJSzpyx5xqCYCu3lSxreTGM
	 KGs9qMf7se3G2x5bGs22XUx7aqBtwnaiHEoGyXN/LPKwe6wv4ZNnAE89Cxfib9CGWa
	 EWlXOPcA/gPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C3FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019425433.18858.2587743240847933961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38a52581d24a454af98666074848c12f59796c770393ee8071fd3e4b8904786
Date: Sun, 04 Dec 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670194254
