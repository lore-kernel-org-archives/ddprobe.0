Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353B94A3C
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3452C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676226845;
	bh=lZAkqwZtLaehbUV10A2n790rYxdUEx20ot8VRhg3ukg=;
	h=To:Subject:From:Date:From;
	b=cL4sWcryWDx5KN+BNwE7A9Y+NHdt4j/U44wnTersZD1Ip6ZR3vN9X1f6NFM9RdByD
	 VZh2IXpEnbNBvph8YsMjA2+7n+BdKAza0JxkR8qAAoXGImZ92OgJSeAiiEI9gs84/r
	 CkojWlCIKitnGIEPb72G62kFU2rHGkqEXGE1ekiB3qpteUXldSky5zNMQMhXbc4Xqb
	 0r5+tb1gP0BK4HQQ29Ubfy4fb+8A5Zn+Yb0B1orWtF37d0ktpWz4bMkQ9xjcNy/4Rv
	 yurF4a8OL8ngnsq0GXGEjcYaGFfWNJQfl+tgUojSiaZaEoaC9c2fNYm9aIBWUq1jWm
	 LgI5vDfOkSbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B602AC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 18:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622684573.11565.9027434805634132999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c576fd52ea38d1fd14bc7a45ee75df4f6f72db97ab825f661fdcb85ea0d88155
Date: Sun, 12 Feb 2023 18:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676226845
