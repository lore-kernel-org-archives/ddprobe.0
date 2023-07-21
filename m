Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFF67FD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5BDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689928328;
	bh=PtTsKj1AQRC8A73AgBHzWLvJwG3UyUN+RR58Y4BbR4Q=;
	h=To:Subject:From:Date:From;
	b=F0raG+XK60w0+IJhvtsqN1FI5mGaZrRxk0pGK8PdDGWXZVpUqgbrxumwUP+V3K/pG
	 puLXSCTkbOvJv6HNDLnfZZvRmFeD7aLeKlN9JVFxA8os2vmjZrBauvqnY09uZ1JbWm
	 f0RXsWmZEjwbm9GQQZhWj7zH2MkHDqlGjnS1gfHnF2/v1lgiEyKlU2NJe2GsA0mc8l
	 aqKUeXmveYP1HxeFnUxqPsMB00aFEX26jUZwiJ2GhhnrVyHetos6xn5WQGehSegyXY
	 G+zr0uOVo3W0PFAN7ueYZoWukYZTuReR2mFAnRWnIHylNoU2SazO1OF+722YOxs+Pe
	 lnQD1KIBPu8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAA9EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992832876.8799.10203925775751148184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fb81770d071e78975f3c1405a4deed1a6dd14834893720d5dafb28b5503a55
Date: Fri, 21 Jul 2023 08:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689928328
