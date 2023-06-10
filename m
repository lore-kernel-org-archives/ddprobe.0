Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BC52F4D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0963EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686423726;
	bh=qvaj/lHzCGFK6G4jANpku/XGvJKL8RY6z+Pp0jPrZQs=;
	h=To:Subject:From:Date:From;
	b=Qi6aw/MsJkKETlNxQNvPUj8H3OpI4VXVoI1TJ0//3n0u4YVhYkx8czoPmpt4Da8qU
	 QaMwJQlFQaO4RrrYvMoYSla3DxZztsytzHASxQKmjCRoykAfwv0IX3cErGF3F4ExRM
	 mI0ZK8/+4r+xNG7Un2JdZm4160wgeuIb83H/8xWeK7FKDOv2j1nu9/2V0jSYANfkDn
	 WyENsPvfFkkvfXpJN1M2XUM0aHia4BTjedc+Vl2Ufi3Kv7LDFsZuxdHBPpdsec5rxC
	 sjAxpLeS7D4426kNVwd0T21URDFBozLiWhzZG4VaTBQ3w6rnt3nf6UT3ob065/qO+f
	 97bFomIYNsaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3EDC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642372583.4313.2394855403387276880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8a232d517a7087567c06cf542f7e326b8076e58dcc8075f9fc6e953d346466
Date: Sat, 10 Jun 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686423725
