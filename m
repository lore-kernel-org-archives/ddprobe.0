Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91B4A31
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A03AC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667458254;
	bh=rXq0C7HeavytpVw1gS4kOfYe8gt7NNSqWT6yWBvKo+s=;
	h=To:Subject:From:Date:From;
	b=pe7uopxMBahQXsYzjUJqQsndxy0WR19EUnB7QwUenv77aWs+dz8+mYolNjtWbW+sP
	 4R6vuoaZNaPXN/V121B1vuwQP/mjoUsp1st3OYoXhut5eyGoggJHoit2g0djDZmxkh
	 qNT0BKOkXcHELF5ozsawI3p0Mva3MzBFJQqLKMJN3DJJFFLh9k/8Q20F62zgPI8bck
	 FkHHmq0B7FWX8mf+uCiL0LZflef+8hwFuZKGjBKGvpEPZ8pur7zcfaclB9hTSJvkFY
	 kmnfd3hBJPJgIkoP6G6C8onK4LTPI1Aotz8s5xuj0CfHDWnOwU5Rja9XlXCUTvND0Y
	 BqpSwGwo6B4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A457C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745825435.4359.5050272621601674813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838d59c4584e3d10dfb954a4c7eff1908d823cbdd4a651b588c9e134cbb5b1c3
Date: Thu, 03 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667458254
