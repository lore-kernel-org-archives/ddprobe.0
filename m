Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5E8156EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E71C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683269225;
	bh=Q6I2WoP26J8Y+FyeP6N+vaooMrjZcivYlPbFZwE9R4w=;
	h=To:Subject:From:Date:From;
	b=bqJSlhbAvotGW1JsBIgvoLOS2YXu1M8QjCFWvElYdJ70Oyzf+ABUtKK06XJM//2Vo
	 IafPK0qtQu8LZijx15SHZGgIysOvn96D5b4ak+BYHPXfOFJfUvyopEkATjDcgv0NaQ
	 65VYQA3d/WSEK8zIJYrE+ulegFPeQ6mEZlCFm6NkTwzXcf5TIE+J5GIrqaE1BDYECR
	 yNKKdxRmmH4on6inCYsCKlFjgIVsUm4greNB5JibMWT/z4beMsT/wUGeQrWapRhapt
	 sCa4w7qO6iTbGSJXcjSy+Y8uadKXAo7s30yku4jTklS/ppbqRHaKKt+I3X4AtrhVSH
	 r7/V1oiVgnxCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9B1C77B7D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168326922580.24546.1931364186014747317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00918e51911bbf76d7d23e3ce9460836b04fd735e323fbb071d67246be8fc04
Date: Fri, 05 May 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683269225
