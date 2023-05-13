Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D447184C
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683973625;
	bh=iTjSkKFV4wSoWqscS7+90haSt2DzXGX9CsgVNupIafA=;
	h=To:Subject:From:Date:From;
	b=NK7XFbo88Bsgi1IyfMnSNcaJUFg+vfroaXVj97qI+kquXLimaqCSnDkdP7mNZTbmb
	 vXqFSwsFmf/0phREia/S6CMR7UEeFJoErp/2oEOvjoih/E4MUnHKo1BOAPbSjTXZPm
	 ZPXnRKp93cziE/Z5DRAkajR/2p07dm0a4nml3KFR9MjA8S3WFaSPylIkPkqYQ85poe
	 Qm/yldl93NH+k+bUz3SqVAPXq6Bf6WTtqqjmYXhikmK1oNq5gfPMf57sBP2YCobdIF
	 37N5gczg72/+WZ6O1qc9lY5g3bZd8ukLJ5x3AvqOuZLUAvxfVSzvCpFCZJWL+rSysk
	 c3gOLKLRdJHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6170C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168397362573.3332.6261579600765449475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc39215c13313e6cf1135eaf4bffc3e5961fdfe27037789de99c1cf3986ea4c
Date: Sat, 13 May 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683973625
