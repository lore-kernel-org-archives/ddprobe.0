Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474A41C07
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E128EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680963665;
	bh=swDm+AhMP2AIrppCr6I0Lbei9fneFZIK+fc4s52PHPY=;
	h=To:Subject:From:Date:From;
	b=eetNtC5diM4PWzRaGd+D2scsVKotJW3cSv3SQXIlM3ne4z4Ih01/ofCA166s4bHtv
	 qyWUEPk+lv8gInXSD+59eartFUHLnusAj8NVKJUQ6RJrmuXystk8s37IgA99QXdxDa
	 4yJJW6YWdXRhiX9vBJsHnIB++hhFoW3tWjfJtn4TBX/kXoPK1QXw4InSfEq/p9ZXbO
	 mDFUK4E1wi+THPE/D5GwhL7nlYMvvsi3p/ep3HNWAVKobZI28MdnZCF/OuM5HOZlGC
	 V0QUXTxgmTokGKpzWL68V/Sg20U7HscVLW7KvBi2c0q1ZNxDvONGuMORf1lJhp/Axf
	 axccI1fUS5k0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03A5C77B6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168096366577.26580.5236586711356687291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73b94dcb2d6e8b41ee70aa90a722a1cfdfcdb6a596cae3a8ca9039cdbe55e76
Date: Sat, 08 Apr 2023 14:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680963665
