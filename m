Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835D318C1E
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C859C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684175406;
	bh=GAN1BNA7xjaIoWRb/o1cHsURj4iBxUkSQRD5tMafj5o=;
	h=To:Subject:From:Date:From;
	b=E2M47q/arzW12xFe8okJF6M1dgxvsigKXRSdO2oMg+NxeV0LEHQY59Cm8gg/2+DG7
	 Y5/xYmQzCtlGN54NomaL362Q7+vXIA45R54HauzC+YRasz/NsRdKAKwzBz2BFwHzBA
	 04jlm9lAW0WEcDNcT85eF1tuv+DjqGw1ugCHI3X3Xs8a7Ex4v72VVug5+YpOFlYj4d
	 dhvuYNjB3Dkb91GqMpx0hg4/fPCQd9T+IdgSHYZAxt2ZPHT3I0FhkcXK6Io1UJ82UU
	 yYxeuI2FGCtmra+VwFNDEJa+Ni9Hxz5QO5ClgJzd7e/i/4+fnsFNAOpWfhfyYC9Bar
	 bzIb2+gYXsYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06B76C7EE24
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 18:30:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168417540599.21291.16570191959002970748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49919a5b2c855e5708e9998134bb7c05e28768a59d058936dcbb2a98a6f0f00a
Date: Mon, 15 May 2023 18:30:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684175405
