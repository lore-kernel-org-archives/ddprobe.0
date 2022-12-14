Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97717B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76285C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670988687;
	bh=DGww5zw2bvEqyUJ3AFhegoXibYNc0TMxdfyy/HAedj8=;
	h=To:Subject:From:Date:From;
	b=uibFwSu/fCz9/vS1y9sVxbxrYckYyAW4JTaL06ExTb6R42eu5x5ybP3OjkWvy/vuX
	 /IIObmFduDGYABZ6zKxg4v1Ib0doGcohW5YebrDFqYsA8RPbLp1zeL2wuTIEm0jYDF
	 PTS8OnWk4SziccAr50TRIIp64sohmC17EEdjOT8snuCM8Mx4uQqEEZ9f9Ys0WSnvYP
	 AiI9waQUIwY/TJGkRzd/yxcmfS7DzhgnHJmUrnNAOd+TtEsu1hh5PtBMp42p72I4N0
	 6MeSgVF6xOXeDtNUsOW/9p+TH/ZwCJO3IL4r/a2IH5RlJ4ecgCDCb6+b+9rh4rs80L
	 HOJRsAdTHy+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62321C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098868739.26100.10936516978907238402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4217bf572ddee76b6e4e1cb2372908330898e3418f15e7d176e5f7329c0b67
Date: Wed, 14 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670988687
