Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9478440
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71722C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663783853;
	bh=4nOAHW8R3/SfCJDUv/lyp/uYAbywdzo48JMDVcIRh6E=;
	h=To:Subject:From:Date:From;
	b=Z7wZPUJddlhCO75C+sTFFTvtSJ5yjUlpqIRMPcXfEISvseU5ZXHeqNk9CFr2L0s7g
	 vanpQQ9KnBwYn9MlQvr0sGGsY3clZLWRVdlmB2QcZbvtKBNhctP+rBXnK0e3//s18S
	 cWMIZwdDdN3JxyDGZcqjdM+rO5UKtQ0/ZepJrkWLowxy5pAfOygOeMk4WkkIamvtIm
	 j3LCxxy1rvKX3yR3pF4NtCiyiZ/z78FlJBCzsEx8sb2c7DBotFIRtGCKhBbvNOg6Fz
	 SaxJ6sVcYMywz4w7H9eXfBkWPA9J1VzWH6dq0XjbEcd1NGzk3bqGP4LSpWK/c+OM1Q
	 BT9M1VodiTtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BDEECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378385334.18226.12938394281232756671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721cb76b1d3789f6395c59b56c7ae2d903dc4bbb2ddb7c179ebd74c3e38689a9
Date: Wed, 21 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663783853
