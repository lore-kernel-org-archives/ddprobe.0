Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76EC3200
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829C9C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662153653;
	bh=e9VqArlPAG3jXLeTvh2YZmcf/QhzZdSttQMMshfrndk=;
	h=To:Subject:From:Date:From;
	b=B7SUANGcQxmZWN1UclbE8ggtg8frcwprQ6pFKDTcmRS/5w8mFrAjYzrCHdfZCM1dA
	 JB2R0ZpxiC0nGdHTBmWaNNvyBBbLYVAmfj8lyr9oBNT1CzSWq6jn/9kV23gkACExlf
	 XsGn/YNp7esowJ159NNv9CuAuLH2BqdR82UbbU3Cy+eKfpbFLyINF/ku+C0qFXmg+1
	 lDhD1TGNKOuR4T8VUGmX/Z+67aDCWicFcg0oZjhwkCV7Neg6hnHg+PgySzqbwk0tjg
	 5SAi7Vg7r/4w+1Q3aiCL7YNYdmHIiTQh43ScwVqJ7Jqsfovq9vPR4C/CIAGQ2PUmiN
	 oapo2+LEWh+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EB9ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215365337.13285.3411315000316256627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3f2427b566bac95045679863649b46a4421130e143ed45a6a4dc8aca6fcb4d
Date: Fri, 02 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662153653
