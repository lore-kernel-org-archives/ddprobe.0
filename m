Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634BE17FE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D03C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688773028;
	bh=Ryp2DP6fy3fesD+sYnCgoQf34D5yK6lzp6imOGK7/5Q=;
	h=To:Subject:From:Date:From;
	b=Ee95Y/HyBY1hut6s3hQDYKWvnCsznaOK3ao+xgCCqeNDMTte5sDQJk1hui5clW7A6
	 82FhWrKuS5zXO6IYTB5cK8fiykztMsx5ZGOeiEQxdCvhhCjj/FuYqluc0RS8yBJG7R
	 IHvEYwNLcembC3d5X4D5zKdAwbaToPCs/fYqZJXBgeDBCWmggSLxGes8hjTnK0QIlB
	 bt2v86b2x/c9TQJrE2SVKsMiwJaUUGnnkrpsqRdApy1pF1+/M4DZqwhfH5JUN+3Y2O
	 f2IjeR8pOZCT7DBoEVvqbxIvMt7/MRo0wZFn3mRvTGdGgdtgwVJhf/R9JTKr22cbPf
	 HvcTNFSZkB3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85F1EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877302873.3488.216538362423577064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fae496daead483ce362c58618c78fd723fae5f6007e2dfc79664f9a3c956540
Date: Fri, 07 Jul 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688773028
