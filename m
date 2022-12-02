Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B7A7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709C2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669982454;
	bh=7OERm2TYueW8AQWbTd/hh3mLVJJ2igKFBKeWflM6yMg=;
	h=To:Subject:From:Date:From;
	b=q2Cw9ph+wXoFG+MK9mrklZgSUbeymIIpDcRTrQIs+bElFND9KixyCESjHWBi10mlN
	 I8Ln30+rRURuNFGuwsOPRdeelHru4RGOOvd/fOkr3AfowyO/AWsPnn4o3oJhRcCLqW
	 zQe70KB7NEN+bGk+WNax3bmZhb8TjQT05lGZTOjMwNyEVg2fcMpDq83npqqz2QORho
	 jMQHy4hclAJiqr4uGNm4YkV2XBF7dLAE7RD5jotA5WVXQwcRMVmYBleQhAaZOWBdDB
	 0gPxzlon0agPzx+isQ3/2O05+SV4a6Gye0fvA3Zy7ZGlhlja4NEFj7hZWCdIjO1c0c
	 SuIXay2RK1ivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5667AC47088
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998245434.14140.12823199907810599202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47386017ef4490cd5f064347fbe236f60f8629ab47aeede9ab9279990f74f144
Date: Fri, 02 Dec 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669982454
