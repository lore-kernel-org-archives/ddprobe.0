Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11AE7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8149EC433A0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672426287;
	bh=oQMXsWs1QtxVG/DXNvKdW+gVd799JEo77gD/x/qC1jw=;
	h=To:Subject:From:Date:From;
	b=DceY282cTREJAHZ1DxxqetdrZRSNnsFsshH1TBZ0DFqAurvGoWZa62eyqrEDdI6n2
	 6oO5Odz53DhWlp+unWCwz1DAE3vld4BFEoq3Xrq95geqZ0n6SKobrK1/SM9JuPd3EE
	 qAWw6PBnLyqnz3zr7Hfo0mJWzUYozdBCSZl9ESG2Tkzv4nVt8MVT2cgUJ4t26mcO+Z
	 VVQ2hHB5O+1s/U3E3W6qqTJ1HESk4QLBaVJKrN8fQLXPXwtpOWQ3Eu9n9qmoRoQ7/E
	 VgW3qU8T2zbRjmXaCueMhqjpCXYSW15lb+DvQplOFNMZXI/IgMnP64UjCI1v09RbPK
	 o7Mz7CNTrkedg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6445AC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242628740.19950.13145921946652983043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711085c67982f65297ac03179a6a12a4b7601caa54c3b52e1aea321edb4c2212
Date: Fri, 30 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672426287
