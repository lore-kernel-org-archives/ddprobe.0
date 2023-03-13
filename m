Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA2184F
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90AFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678685225;
	bh=+TZafPCpa7g3S3VDj8Tmbo2M1wigUxEU3YFp7zmvp6U=;
	h=To:Subject:From:Date:From;
	b=mu+GWK31eGkOHbNX8+oDymoi4mdOYXc0524PL2SuOZ28/xJ1VaoGLk/dnKkDNLNmD
	 33Fc7OlVROLJkJ5P2N/iIfJsx7WQ2bL55nv+56huwvyicpJXngUUmegHClKiEAXFZb
	 uos+hSJYD09bfVhfxOklS/d4Tqm6qCsuWn8gxsQB2sOx+ymwYlePu4UZHrAGfcuk02
	 E3Rts9gK+V1fMT0UtNk9fFO/B4Oyb92YKBlcXU8A+dKrmnZNo8bn6vm+6bQ2313Q5E
	 1QvulRZsc1TYBWXrP6cEPsi93YmOvoYN0ehwEHJEMfe+KO6VLYEtIayeix4QJ8mN3X
	 lSXCpwokjbRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE16CC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167868522577.16321.9230627121875798807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfecc29f92e06b16f7e3fbc0555f4325e919094f90d1349bca857df49fe75354
Date: Mon, 13 Mar 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678685225
