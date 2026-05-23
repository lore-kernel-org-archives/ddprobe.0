Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BAE33DEE1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779522754; cv=none; b=K4CkOQS93jqhWRapk8vB2yV1PDWHlDyuUYc4Wuz2DcXBO66n5BODPauZYA7JP9qXLMcItAlmtONunoUFlRPvQJPV1zlAoqPrCWPVVhAb8d3eGQyXGxsLmmUPKi3Sp3E/0G92ey3g4Dlt/hzY1A7FrCyucjt5DjrIE9pKiZFQDzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779522754; c=relaxed/simple;
	bh=cdu7wASAYYfBKf6U3dngfkXZU6dlcAOO621T/overP8=;
	h=To:Subject:From:Message-Id:Date; b=HW76eHwok+7GqRmUk4g6QLTn2QKzQ6o4FfNmDu9UlK4HL2UeSXK/n3fbgzeqhtor5YCi+9ATsBzHD9VDfB2qnggIFLpbjwj5Z7anxgXHkVU5Bw2CduWNyw8aFHZx4V+d3CWs4tDAEKC1nK9tc0MSkXEt2Tqsw6oM3Jx0qRhIriE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1Hn82c5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1Hn82c5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1F3C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779522753;
	bh=cdu7wASAYYfBKf6U3dngfkXZU6dlcAOO621T/overP8=;
	h=To:Subject:From:Date:From;
	b=O1Hn82c5Tp/ILHTA1ypwNgffJJb/RQXDOXZl3uw6740ct/0uv461DLwd4lcbugLjg
	 JcT3l7aWHPN8LekJQoHWcYRkPjg1GFsyaniWsY66+aSsy1kUfNW44BJ8ZAOPriDsQr
	 B9yQ93MBPmnHx3quoitdzmPl7L89XlpdbGh+XGUfkJgYDPLH8oGq4faUolcQSMxjKf
	 0O3DLh6PKcZzj1mf+pg+5qbj7BII7KZbfcXrMoHGaRd3/P5f2T5J7duWCM/cgAvKld
	 MiQfEIB8l3u0MyhM3LUUvZiI1X9KvUAFslORDDRheJn+Y/P6J4BJJNKRpkesypBxqQ
	 HYhnYoL6OgcBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E8FCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952275368.28575.14380802164344715395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597aae226c20efa8625c1930dc82a5c342603510035a86bd0ad8223d7cbc53ab
Date: Sat, 23 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779522753
