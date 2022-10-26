Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B81AD23
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CCDC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666814453;
	bh=cC5TCM07bn/12b+1bMqikNO9YiOTS+ZETTt/Kp+FFaE=;
	h=To:Subject:From:Date:From;
	b=AI0OahgqKg6FZADHQcLi+WU2oDRsT90gLE6PeDG/pPAg45kpnHxReiKZG6bUWDaqy
	 uyYaSp/R/9TbZQCfh66Ro34i3AIBDUGLgPaj3McICX0qPWIgaIbDlL64KJ5qRMwMkz
	 Dv1eCcOsrJj00DhBpkJl7/2NYUIfFUuGOyiXQLDM/VoPE34INbzmOGrwea6aBkujsi
	 jb82/YE5OXdF0ipbF78S0AJnqZfdFFyAUxfCLJPaXeWWiHWOjhX2bPrU2FzJXUBLXQ
	 iEK401UmPFmRvF9LGjc/56ey2d/JcVrCuj3rU+hJ1l9nQmn2SduTgp/uJ1hNp6MW3L
	 3xuj1XguAf1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5C1C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681445331.1861.12596398332472398904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e61704d0cb3c1cbcd16c65918ddd1d6551842b64ca9f9331ab5a0f37727ef2
Date: Wed, 26 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666814453
