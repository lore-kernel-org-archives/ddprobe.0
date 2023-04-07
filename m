Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C2AEA2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D358FC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680832685;
	bh=Tparzp+LI2QLIvDGpJhJVcymhzi9g3KV0H8A3Xkoe/Y=;
	h=To:Subject:From:Date:From;
	b=QDCabiqQxxFSiXKwMaT250boUoSN5aCXGqbcopz5kRBpyQROK7pjf7t+WuNuwUFTs
	 xIOhyp+EflRmJLgxd+oXjSYbPISwIuvjYu0sN6+lgg8sQfNS5mFbdAyikE2BEVyJ3M
	 LS70cEc7O+Wet0cfFxhYZgDEim/tixHCVlai6cRRWOaehV90hFRdsgZDOts8FjBswu
	 EE/3OaCwcVlrlD6O2uTehF++WWgooA9JJzXGhZLOfgM0Xo1TYiDwaWZCBrNpcIfZdQ
	 eIIIbZULrzaneM6L/Kzk/U/+plh9EwL+fz+QkIx0X61igCXn1h17aBRS2c2xie02cy
	 huXQUEmD/1m5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B790EC761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083268574.8780.8432258997998185570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062b3a5a3fe9ad8f9a0b6c69c36e571c5d5f9a81635c6c6255099227b9fc8c73
Date: Fri, 07 Apr 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680832685
