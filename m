Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9D424C083
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745948993; cv=none; b=jRXEWyikapuYTsf7YRmSUU3qTSYT7N8z7/uzt9WylBSnbiYHhteuWTNRgwMXMiYmNbE8e2OVou+D3tqbo8Yytezdo+Posv3/MtQgkAZd8ANsBqLsNDnr7PdccYtbilzA5C5+LO9ytMHaF7Tzvvb93ry7uxhswb+tOSayzbWc+vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745948993; c=relaxed/simple;
	bh=nD6+140q8ExiGpZFJ9Ih5zS8nwmwg0OZZv5ahAwruks=;
	h=To:Subject:From:Message-Id:Date; b=SB/IvW5KV3Mq9wtoDuHqXxxLh2phkG7WP4WzpnQSD3Mc3+qamDGnAvJ71epQtt3RCQJJiO863fRK4rtL05Gk3JhRFGf0zH+OlZTKJU8u1t5PZ8tDpZg2zFwLi3CEJzacdDVBKLOB6GG31GMrrFmkwSZXv5Dpd+7xRa7yIM46YPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2P5eKHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2P5eKHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E09EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745948993;
	bh=nD6+140q8ExiGpZFJ9Ih5zS8nwmwg0OZZv5ahAwruks=;
	h=To:Subject:From:Date:From;
	b=Y2P5eKHdLiIzZy8BMyr9uiqgRBr254bz5w9LEqIKMg2yfh3+ttZ1vzhbHatOlLMJq
	 3Y940/QtvfGopiO7TRyLavKu/oxAjpqvKWnHNPttNq4dE+kMVs1PIYh1KKEMVn+kNk
	 J5Lq2Gx1Q5AKrJE14wsP8CDSp+r/YnkVhd4lUNZdECaRgiu07vaAsMNZFEhmcLF5U0
	 zaIHhBzbF5W19Mfo4a70HRG5Tb/PRhDdyRSVxTk8JMvhkG7iCACioF93eCuUNEVQZZ
	 +7YWfstvrwVzoSFsvQXFFFcLgS0S4fA/L7LwA6kdp5pmQNL2bCoBx3BWSYCG0/enmi
	 w4qH31YZATmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E7C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594899357.18794.18368887785495673569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbb59aeaeb5b06b16ff43ba46f44806f3a6720de7371b34665fc6819e6b4575
Date: Tue, 29 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745948993
