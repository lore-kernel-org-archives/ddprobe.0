Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1041E98E6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754960994; cv=none; b=pcXJ/tLn/VdWqnCr5Lyaq8Ezetw4bUxo1ce6gBXTgI6Be0a84K6rccbhkjaX0AvbilUKO/XPfGB8f/VzKeMAqNlzlbOU+A1ee/HLqkMQJZ75LbPnkbv1qYsC3o/u7Kaq6NrQyJdWOTi1ga2qPlyPkn0AxGmZJU4IqMEx0R23rHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754960994; c=relaxed/simple;
	bh=6xMl3KzAtAQ1kNHgNp2FqoHEDNTaguchjHz7bId9IFY=;
	h=To:Subject:From:Message-Id:Date; b=ACf8SyyFVJCjAbUICUwoV00QF1P562XRkQMRLY0pd8VlXlo8JTfpBs2/HKBNAzLk4LQ463/c8bTKVia6Rwvk8WtfQ1OGGsDkXoIaVertFByzzq/cD17nHMuDReiY34yOTVZfQMOQRgB+k54T7XCPZwV+kjVQCVGzWzcuFMhUr9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg5exnz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg5exnz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754960993;
	bh=6xMl3KzAtAQ1kNHgNp2FqoHEDNTaguchjHz7bId9IFY=;
	h=To:Subject:From:Date:From;
	b=Rg5exnz/7jZ3Gl2gYvnYu5krgUEtTvRDBtGI+sWmVUtuqE5QjH8s1ggz7YV3juEhO
	 SJ62u6fu9k4nKFKVYyhn8+rdomcxAqgfIrii5i4h2cAB1+JVcwRivw1HXOSGf1x1I4
	 9rLddAy+EUNzc59w8ZVnt5Q6B6KM1QYH4JsQ41s6BYYkJALaAClIQbYzmI+oYzNPWa
	 EUjpB3bPqamtmO5SN4T3UFq1G7rxqY2r0JSaykfumyXxAdlTFZYG/dr61jiY432fWS
	 Jn+ST/EMnLnGfR4+WS1FDrHoGmrt5/E+UFr3vWk3BxpvsZyirvbJBBg2LpKOwSM9Ns
	 z0htDyFUMhMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91601CA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496099357.3060.5766064783250024758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacd2ade48408923c27bc356ac698ef523556376af3e38368cc623a9d6354812
Date: Tue, 12 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754960993
