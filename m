Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E281C2E
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3591C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664512854;
	bh=KHnwoo/dhgzSlFzWFUCq/GJtnjEvLqZwvx2NI3k6kmI=;
	h=To:Subject:From:Date:From;
	b=kYmJ/7f2Yj3yz0MuUh5k4/GzNhVf4qnzMr8hCpsttChjgB3v70USgIZtRrOKtRdDt
	 c3LuyLrA4gP15QDF7+JVL5dAEL46cHIYs0Duzw6BYSb72z4EJAntPoL/3CHAzgHBZf
	 3oPWEPVPeWoWrmcReQEuBTo64SS2M+eCEntxMcyHe/wNiBLDH04dnxgKik8PT+PHha
	 lIeqVyPB5Mz2U1rM8NAnTExjyj409CFVzPphEgfu951wodorHA0MWzxuf9ncUJny7D
	 bG6cTZgdhodYY84hfiO2u2Oo7EkqXKvsidXgxpcMfNs2m/4Y3kPA1Mk44WgKLkkPTR
	 z40MSQebdTHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674F2C4167D
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451285339.30667.420618843621312148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bea550a2930c8fe19a0d3742ed900c3879ae9ea09ecbbb592a9df6969e6b580
Date: Fri, 30 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664512853
