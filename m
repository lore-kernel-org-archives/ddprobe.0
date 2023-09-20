Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A15D8C1F
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1E1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695199508;
	bh=2N0TBnx58gCHFASfDCbqCII/Uv6ofVP5UpSX3lblzJA=;
	h=To:Subject:From:Date:From;
	b=TPfTva1O5RrhamMxOIU1VpxEwOZUupU69GZLljDCeu3bzLlBcB7mELoy+QCy7A3Rp
	 PVkS/fyraJt4gKuqOUPykJki1pxb/i1mn3Ao/1FFyRWFy8xzx/YZ5ntdOe2YSWosjC
	 hUpN1f7+mSWhS0IEbHnCqAq4fr+Wtt46Z2tgxlrSz9N3LyfxNxsU+Xoktpiz0Nll8L
	 0bKlHcg+p21OjiKdrRZAvBn59z6h8BDWugysQwCVdnhVJjUWHjozeQWbvIKrtc0Zhf
	 bFrU/jemtV2eGUNxBgd9DmIG3Uw54KkU2OcIOu5e/s1qStHtOUgz9SlbhXY15z2ZjM
	 sxzxrawrtWs+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2542CE79AB
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 08:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169519950865.9583.13638655557332848832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49534b2331f6a20178cc63d2449589734f4dde6494a2866d3b071abfdb014eb2
Date: Wed, 20 Sep 2023 08:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695199508
