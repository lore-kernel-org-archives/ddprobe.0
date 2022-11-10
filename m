Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB68D138D
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4A1C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668073254;
	bh=MYTRtrJi02dbkqYibqu8J0WPCt5op463SdVUlGbiHPE=;
	h=To:Subject:From:Date:From;
	b=o3YaJc+hs2vNg7HZsDKGAtEC++0GjoTB//Owz3sIJJzaMS58OgawX6A9Vl3MFiBrb
	 f0Y/8La4+kDglk6FZHeyqKXlvMbuC+3PAL9l+gDP5tE7mCn/4/IcDZJUKeMbUTZaML
	 CbnawP9cXVY62g5i1WpEfsYagzh+sxj28Zk/mIbAwUVeXjINCZ2IcDX4zzeO25hgxw
	 kMh3IPg3tSy+OUsNR5V7ORlMdJsUDwT7YSX60HLptH7G9O7NztV2b1DI0E4VwvyDVC
	 uCaz7eyZ5S2aCM+j3ze75RdDR4e7RELnOcatkSSoMl3YKQL+chDKHc4TLwvoPpdKsv
	 13+4hZ9lIqRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538EEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807325433.2358.9437055104624620408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f4c9f05ea36c1bcb685d86b6501d19f984bfb26c1dd0a12f1d5a099d73fbf5
Date: Thu, 10 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668073254
