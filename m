Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BEE611E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776920254; cv=none; b=edZG99IjxFTD1nRLEj9lmfiOSAwAlWjy8ghDguErQVrIR3CiiGtH8iolf66SrXsmrdmlZNdwv//j+O/8K4429cJMo2PNXjj+D8JSleCmIWE6cJ+QIZoVIZrbm++80hHc/hzXAzfIYe3Nh9BorITqINWJ3wujNkfWPFV4dUxT9AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776920254; c=relaxed/simple;
	bh=OoZGl5fKpPE/K0wTUk2t+1IpO7oWUbx1nfcw/kOmR74=;
	h=To:Subject:From:Message-Id:Date; b=VRjA4AWFVgEiTF8tAsODNbBcWXJK5Vgk80Db/LG8E5CaQ1Z2PJfBrklXZcDYayQMF1kHXZOOomoF4BAeKj54fvlaX+9D6eXs+5akN5O9KTD3YARls6bpPC60c1tMhNfwcfDVbLNpi3h+cEVcjl+0TUkhsk1XVsPOTwaqAUHg8mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVmmlmtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVmmlmtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B931EC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776920253;
	bh=OoZGl5fKpPE/K0wTUk2t+1IpO7oWUbx1nfcw/kOmR74=;
	h=To:Subject:From:Date:From;
	b=SVmmlmtXxXF1mFq1u7qix+jISg7YQb+51HtdHTvGnvLKnZS8PLfxgwPsGM+dbeKq+
	 mM+E7EvQdd7Zj8F/OI9elpn0iTX0qck6/bo3YaExLa64SRM02LrUqWCSqFi1kTeg9h
	 F8f3bwAwXVysi//6t1yA0mYJB47L3txhVb4iGS8xilXZ0/qK827FW4jJWv7dZR2ZfT
	 LHgu+uG5EuvBYHi4hZhivEfN78fF79ZPoDduqiHswVCRG7yB6I+HaIn0dbp/ro2EYs
	 e5zLwLXNN7QhcfaLxeyi7d9WHTIZ0LjBJhC2e7vhRRTyUbzfdFrikxEfezcwEJoWqG
	 Oui8yt9V18GMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8BFAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692025368.8186.17854950636176482149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a928d86769a5a432b5daa14a183d23ee09bee4615eb2ca868f14efefda6d9f00
Date: Thu, 23 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776920253
