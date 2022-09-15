Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B047D15AA
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAE6C433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663212053;
	bh=Sj+jnzOtOVf1JVA/FNFLflbqc/HaFa37/++bM5m04CE=;
	h=To:Subject:From:Date:From;
	b=TDWcHyv9DX/BorTva0gUyYK13zw+LQYfM8jRN/rCvpd/0FpAn/9dHBN+kdpSqTSlt
	 B3OZe0DRZkul6/thWKWpAxJTpFLOAWkD4jTUZ0qjO1bhG0ToU/Le0KubEHVodwLsBS
	 TUw06nL29xeKTENbxzGH2XQLs4HR5qQhs1edO+1ezpiEqBcDn9bGm2RJLbhc6Qxomd
	 AKRQ4r8oQu4mwH50BM39cnq4goDwAP7QPynzpFm3NjlYbfPAes/BaQP67sBMuUzuar
	 mMXlbzz7puFX9U4w2KcLvS68oIlekfdZMwGd1utU5Azuk7ZK75WSgXivr0Q05Tn7Q7
	 MQCpmMdH83tYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E337ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166321205331.19605.13070241825532919209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb323edabc27c3ce43ddb1cbffa8abda0cb0c491722d1291a1ccd365b3d88a0f
Date: Thu, 15 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663212053
