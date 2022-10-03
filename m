Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AEB17FF
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71818C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664824253;
	bh=OzGdY9teWSr/5vZk+GdLO6JBzSmvMnHCFoDhoD3MMh0=;
	h=To:Subject:From:Date:From;
	b=XjvWRd3lhB/MGUf4wCAZGVZhYJgiLYhdg0Jabt8eijyTPsFlpDJD3MAKhqyQn+OeN
	 JJNe3Bof9aWU/4PyuVbCj/b/EiK0romQV1N5Z63I9xjzBh7Fmp99QmE+cVE5Gh55uJ
	 Ry7E+xCKWH2TgssIF5wDvDIOpr5n4mJyUqkRh8TenpxIA8uBpNL+m2q7ubYlr1IqTU
	 nZAgu2ypdBYOv+QggpZepGMeWkfYu7A3QZKqFFvgJ2pIPUcpOfiWU3JOvG+z7qfGfk
	 jDAb0QjWBTcrtlLB4/j1EAll0X4fuZkIEFFSRo38BhZgiLB+UorPydtz+gp9NhH49/
	 3XkRjlV0ZceAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54016C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482425332.31802.7478875997929528659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984d032607e6ec9582e8452a986b8684d192938913ed1cd8482b2495324b5885
Date: Mon, 03 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664824253
