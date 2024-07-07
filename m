Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65420EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720396583; cv=none; b=TwCXNrFpK5WFTdOe0oldh4VP3hrlZ13vIbsRTO8CJgLdIMO5W+kYHAZ6SBzUObdSqVEnvqWGxcgAJOkSsamEunyHsWJfYEdG0xjDtUYNK3xcnXNH7ohoeYywtL3I68wfS01FTvx1AjchNqc+aKnFO4wLzTF28/vQwaw3KfoGqDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720396583; c=relaxed/simple;
	bh=XjA6qkHFSE+NG7wSObNGB1IppaO0QnPq/lpJjEx6DEA=;
	h=To:Subject:From:Message-Id:Date; b=dDuM/O6nbXj0AiVK63+Vihs2HM/sVWK0JdGBzHWqY+lbzOHDPyVIeE17pkFJsQxM+DXZdLXMpAJ4i/mdOZ5gXNx/JsUKxBZOYMkbJpkLfTFi1GoUd1dMiXBOe70LgCsM3Du3OCkn5iNQfFXklZRYGJX2O1zW0YLl7W6iGgew5Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoI/5ZuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoI/5ZuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7660C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720396582;
	bh=XjA6qkHFSE+NG7wSObNGB1IppaO0QnPq/lpJjEx6DEA=;
	h=To:Subject:From:Date:From;
	b=MoI/5ZuBU0+QVytuRFoV9+tCaRaU6+Kij4YxTPL9LAdgBkgwQD+X1kRmaHUwhci1t
	 UJO9blpKCzvsV2w32BfXWUzTvXzVTGyg6fQgxJ99KpbmfRR5L7Ziu/9jq3djDqMzVF
	 Aki5lu7fylRIwMHYUygjvjF8DCVSFupX724Pu92cggBV9eu1/U3iYb+WljMJXnbmBy
	 6KGq4R7+xLorjJvLTH+QwgFusXEPOowP4XOeRz5bafyiyfq8BQ5sXFiBHzoweKIP7J
	 cDu026welkoxi0rXIhBTbyz5bhhVBqst/+f/w4PBnZOzEgude6lPYCFm2zGrRSqawq
	 Ng9Eo4jgor/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C83C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039658281.19336.4508376552427826330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d70c772206fb3957f065502bd5958186d0533faebdc900903b48e721c8bf7c3
Date: Sun, 07 Jul 2024 23:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720396582
