Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FEF2F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8C7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665948053;
	bh=H0HOGNnqirczQhyTHCtQ0WeeWmTSXQwyLTXeXAwp0YE=;
	h=To:Subject:From:Date:From;
	b=h0rPZRDx9YJRVDDByN+8Iz4D/rIjfZIvnh/S1VIh+2qGFHwyMoKGIuACi/MVFowS2
	 rSQ8rDhVFzcuECSwM+NfMBA6dqQV68eHlu8mPPp2MQdM34HU4DoGzd1bzjmjbf9xXG
	 27gXTa6i03MUGGm222TpfD9x3oTVYLBxbGUM/2a2o8uyMGanYblhx0DD+SJUM1pwKR
	 vJt6Ub4La2LOxwFaw/kDwf8QFWFtRITpm8e9nYeVpKKJ5Hom0E9fXaBezlXnDqCT18
	 sFp9Ephifrx1Xrw+lKNApOrdfnYH53rTRvV+nwG0oTLD4PmVX3NB2pTxLZI97x4Wge
	 jw74Dzy0bi2hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DFFC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594805333.12843.10176436292870511730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d406b813577243eb02eb754b31b71a2cfded8562a82a9e3d5f7913bca569dbe1
Date: Sun, 16 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665948053
