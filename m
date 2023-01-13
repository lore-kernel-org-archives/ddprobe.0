Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7C9659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B960C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673593887;
	bh=wryzdfmNjnNRk1YR+Yj8Ot4+0nmtmwQxWdlbGSkdIK0=;
	h=To:Subject:From:Date:From;
	b=oJ4XrJwRsVY0UOLXM/h4K1QW/ddld7i817UIYv1ilHZRbMWEhxiO+uN7uMe7+3E5F
	 NcQJMybu6VTjBDu1gBxHtw6o7nq6Hx4SBhvR8nNqGHWJ5+9NH1CzmdkG9fW4Rp9wFo
	 X7d513De5DZ4TAcg0uFWWIBA+XPHe3eVv73hfIBRTSWkQ3b3gggg6xUJxht960Gf2T
	 vceZlTdg0O39v04ThwbYcdAbo88kpkg3ItwUjCyh5cRr2Wrq9gR2DjwtGZMiAuJTcp
	 Yha4jsTrFMF7h3eMWK9vl7GWy+W6f8UI/X6WNCOD+uBvShJQsN7Lx2Sqv2CEmlPGSd
	 24BxMRce/nAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BC64C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359388747.23128.13260141173577925380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a363f6697c792d56ccbe968bd1df2e01cf35932fed5890267dd095666bc78ef1
Date: Fri, 13 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673593887
