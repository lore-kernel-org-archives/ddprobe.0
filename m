Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9D73E959E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773129894; cv=none; b=K5m+jskW0NoyhOWV+GNWF0B6ofr3krTpgJx8aV3lK4WeiLNgcqbxAc+0hSShM+/Y3aENkN6Gao22QmDKRO/atG9Cp05eU3dyz9//dEDGxZZxj9WwEt1EljkVev5IkEtjv2jRwGcRhnh8TkF+YDHVnN+JNvYV2/xaj8X97g3mCIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773129894; c=relaxed/simple;
	bh=PYCwA9ziUerpVwpjwOZAduEmIB6ArOTNTmGXggpHHBw=;
	h=To:Subject:From:Message-Id:Date; b=LwocYh91cGDSGNzqE6xr0qQKkJswDijjq2DLzltEp0EPb5ZG1sgI8+YXeRO5+uAN4NcwpVz3Nj73GcJGKN5GybcQ2PnnVvOxHG6qre8uU3CywLWEAIn7pH905moFGobfwVa7Y2bwjlRIiqPO/sUTOaHN4NdxSoD3JC/hivJUGH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ousI9lWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ousI9lWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC4C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773129893;
	bh=PYCwA9ziUerpVwpjwOZAduEmIB6ArOTNTmGXggpHHBw=;
	h=To:Subject:From:Date:From;
	b=ousI9lWhtg7LDYPIz0oChUrrtiSIhcXw1UxESCK0/pso75rzHbCdjROpTk/lm6GN1
	 Ti7AZpq1G5uf/VNbygzJkyMhy3Jz7Pf2G9Renp3VLpxd2OvvF12m0fy2WH/lHtYzxL
	 Fr9gjBMiQ4om+jMQQiBYrN4qut96pBLZmxhpyCSHKxaLZ9zAnxpQZxB0W9NKuRVMw9
	 KLcuzfsdZZEJ5sHuFla9iAV0Hg0vGZJRl1fcHbb5yDKAOeyTDpNoBTmTboaPmg3bCO
	 kuzaErJiMKFmvqU0gHIvOTkMwTOznVsJFWIGAMh1gZWm33W+97ryAOqpSlcOq3aNZz
	 hIBo3nYuzt43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C7FCC9D8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312989358.5036.13268797389519424619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff277188c18c22964b788300188bd4553f2450b6be791ff1db66617a02c0a3bd
Date: Tue, 10 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773129893
