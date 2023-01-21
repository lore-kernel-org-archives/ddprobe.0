Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504E7643
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0FDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674293525;
	bh=5BE5t0i5xIp3eB7WU2ZcsmCBet5kucb/q71N8bnX2Ew=;
	h=To:Subject:From:Date:From;
	b=XWBkysEdIPl8usov9wLeAV1Jn28aAJh1h315N9ZKgWoFw9Xtw/aXfe79z1gBo+2JA
	 PNi+iB3vYf1RpaRNki7GvSoi0ROAeuvYia5F2eu8E/K2uYGW/g/n58oHHG3f0V5FWl
	 U8ZvqccQ/1w9aLxQEdynEeA5WrtZkKNJrc/2z7tK7yhtPDasPOHD0wfDAbVNdhUKq5
	 HstaLwRFWnuwg19KPgTtRyZm5lcuSDIC5CV8R9wacZOg9A/VdTjQGW4SC73BIBgQj/
	 7z3alKv/5pcoMzs9PCc9aIdIG7m2mOCoM7Ycbce9je2e61rp9etK+ChK24RhOXflJh
	 /vxX8N5F8LApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF63FC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429352575.22382.16290068723529810440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a7b48311876f13ef5adf4513542413faad8fe7131bf2336361c585f2e1c95c
Date: Sat, 21 Jan 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674293525
