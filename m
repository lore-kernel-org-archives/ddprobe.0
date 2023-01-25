Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FD91102
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CE3C4339B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674622385;
	bh=NbyTodw81SGFnydLIGeAbpqEDDaYMoKH1a5dYZPJARA=;
	h=To:Subject:From:Date:From;
	b=ZqFZ/q5vcO9WMIfgsA8kWwXKqbz3w+kwugrfzbrWm0V4OH8bmIpGT1LzJwSU0vOwj
	 mwraCFAFvUPmj9I/vv+V5ZHkib6q9edo0Om+Du99xMtiv6a/p4Yrv7HBg8d2r/gXk7
	 7vYAEckWjLUbBl9Dq275X8w7cWKw/RScyhGmHPlZS+/fSbrb7DMPanmgY1fxdz4ne+
	 S0ETj1UJKZ+fgTV8EdEMNNNLrQitoZcLXJI7jUBOUXB1+okmJ9Ktw5RjPziO7TX/nU
	 18XrbfJ7sFw4b0EYZoTBL689dV36ayPikFTuDaTjIdPELecEcfiHyS1LQldQ2OPFJn
	 pIWfu+INOYKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29F5C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167462238572.27927.2303885912162471767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84873ea2e652c97b3ba7e307cdf3d518c0150ee824234739b04dcc75c719f55e
Date: Wed, 25 Jan 2023 04:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674622385
