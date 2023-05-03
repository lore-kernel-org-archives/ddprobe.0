Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7559479
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683122945;
	bh=6qp6N94zMbgw0RAOiKil0hicSej/L+XG8eVYJZGAg50=;
	h=To:Subject:From:Date:From;
	b=K2vfXsnSh7FAmW2OYafHIFxpdxEjmRBZAHwShIhWBM2gOMYwvjLcQl9D8XYGuaHlR
	 jPnYfCwobwQkjOeo165Cih8S00Ztm6xXEHsyin8WTueWEwj43mEpR7lJzita+ZDIfY
	 TMenJ2ZnljRMMnTmSARzvLlt+oDBCTsspzB/B6pRzAOVVV88MjArzo6Hrw/pMJI+bg
	 21EuD+zibAQfb81LQ77T8yZrprJijak5F06s4NBxfWIcy/XDoogBH/LZjFaOKCkOG2
	 0auvnLC0dvBnOUAomqIrroADfv3AujD/O/KmkwzMEC/pRUTLBZ2w8ljY2/jsMBmTxi
	 8vvV86XO32FKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9721C77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 14:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168312294574.9829.6668798661591937774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89a7c20122799f9eed84c3fd72eee1dda49259515835743ee35741750ce4241
Date: Wed, 03 May 2023 14:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683122945
