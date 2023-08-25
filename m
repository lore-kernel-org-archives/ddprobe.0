Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33BEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692941048;
	bh=d68qIMjSAA8dVQm9gqKZ4wY2rqR2raJY0Md6i0cpXxU=;
	h=To:Subject:From:Date:From;
	b=juC9QrX0B5AFVmn/LIuulnu4IL0pBIkn80dMNOsWAZZbiCPrdDDQf97dmMCv8ObmO
	 +C7q+ytxW1KBe5MYcjognUlL7F5EwoX59NG0bXeaJ98Dx1VjoXG1SUYtb685WrtIyP
	 43VyZhJtM9eEYRvxmFgnao9sJDcwkVvhHncAEr4BNiplMIKUjKsy+LEOtZ+czOwEx6
	 AvHkphSSLN0s8P4RMRZycrBnXOzE0bwQ9Qsp/ddtwXgBVcrJgnx/liTRxspkzjeSsI
	 Z1dqIN5SbByJZ+dT51lBhcE7ea79xyknTvQduHPodKT33F0boaL7xNiWSorByGutIR
	 QMvtFgej/W7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A664FC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294104867.4134.13066705483358893672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931ce21b5eee9ff85fe632faed6b9bc80b5a355204c2a6f5a7438392019e54c3
Date: Fri, 25 Aug 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692941048
