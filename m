Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E75168DE
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEQ8EAAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF77BC433C9
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696681028;
	bh=rNrecPku37FiykC5N3j//qq0vAkegjnZ9gFNM/QGksg=;
	h=To:Subject:From:Date:From;
	b=BEQ8EAAWOClvK/DXQQf6KL69ZPj0I6LxDSEJWcAeLuu89O3oycuX38wkL30NW358h
	 cfuAtiHagSUoJU4UcXpXsVqLb/ezWjczRlGBNLW6Jt2XJGPGcbV4m53ewjB4gs0cgx
	 J4omx0TEjWsLYahFGeZlBoNM2LAS4GAWWkCorIV29IunPiO6qE0G/juxusp4eJiItz
	 AH8W9yClmoINTIiOcYTl49HMX6NryhqyNr0kPeTDD3rOtH4QP0fMsEhLYJg6MsFqGx
	 hsnHMqtGS+oEwPJG8THttfQM3PNMovEllB1DjwvVHmLoZc6OnC9Uqn7EGETYWhoIbv
	 KkUxZucN4HMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAA2E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169668102876.26281.9539043990002465852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eb970969b24ed475d9f70f6cb507877e8aebf960cff68f1e150238392479e3
Date: Sat, 07 Oct 2023 12:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696681028
