Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C087710EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700D4C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667550054;
	bh=IWBqvMnBLBUAbi3FLWG/JnuCGLXlMseWV/cTjFQY/bA=;
	h=To:Subject:From:Date:From;
	b=KRFOaIcaqzZy90cnecSG45zqmlpbKX6RcPUlGSR/2GvuNduPVsu9P4Hv/CGF5OZNY
	 G3U3z9cD3LGAwSx7EExfFLNFydjKNlyrgf83uuCqZx2gzvXQotAuJCsF2jCXo46IoR
	 NkhqWJHWvvPurm0l4QQSFbrmD3fenImn4zIg4gRkh4HlU9cH+wjCl6+UkI1g2dRj5c
	 G/jfPy+OmkSBK9YaJmnfj/3tMXY/vOF3sYNpJ2tdb/GJJu6cMZOsM+e+gVtTvBjSUX
	 JP3pniwRqATCknFvwkWOQ5NxYUHovOweVKUcQkIvSp65E27l2TiU0b/vBlpUAupxZo
	 pzGnieTUpsS2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C0DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166755005434.3328.9638314188130084715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068ec353ba817ac40171c1a28ef032307e90422f4cfbc019617b1c21a5f2a9aa
Date: Fri, 04 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667550054
