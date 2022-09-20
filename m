Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D153B1C34
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791E9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663682453;
	bh=HumH2cynx3r9BnDri/AxsLDU2lar0Pe31d6OqDdmqVM=;
	h=To:Subject:From:Date:From;
	b=q+XACLY+ICTk2B5k/U+YAVWJJpelVBSbkFw1laTAkrSCELpe+QckZ/4pknhpzrA6s
	 5BtxMLp7M3YUMXVxzGsqnpkxsZch7ow4NNogpV17tCkCqvNQ7mGRXh8vy9gbdoGOKB
	 y42Hpo5oAhE9NTDdEt0L8bBgAW3WEMGBj2awXWZlHa4gI8JgvFeSE3p5kFPAK1Vx/U
	 FYWYG+8/Vsn+Gk9NpNwcBRfI9uYx5ARz/S7IBD4zZ4w3Xy09yEBidhBWvSbDSYF/Ed
	 3tRJ+4N30x2rOwhtY9DkFUrZ0p27H1sFYzVuumRNXMd8HBjnrQtRDyXcfXBKZmwL9t
	 uB8fXfrepfnkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC5DECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368245337.22629.1859476350617360680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d6617eacb814f5925c9319d9d4583cd63c95b9e17615ade9421b0a7fe5124c
Date: Tue, 20 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663682453
