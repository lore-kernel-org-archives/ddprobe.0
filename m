Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE3D2904
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719098543; cv=none; b=RxSpL6fYAcNavoFd6NvVaLP0X6inTrPVVJoxSIH+pz8PeeLFO54pG5CdlLXBF80VBMEkVUWYQYKdrYhHlGOecsd7QiNB1ACXIueENfgCZ3UDLOb1EvTVMMrZXROBfEHCipEslCMBPEWfkEA0vfBBw1ii4nn5MTjJoIjsioOlT6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719098543; c=relaxed/simple;
	bh=Ai/00WIszhE+uBElTxV8YkRAY3vy4kVbYU85544bx6c=;
	h=To:Subject:From:Message-Id:Date; b=K3E1ZyiritPXvYqhM7Vj//WRdoLMWKJoYJTuADGTuXqmPg2e5Zdvq1XPZXWqTD9Dw9s1rn534TikUZWVrFq+53aBcr8rfdZfavvWMzxOeWaagIYF/S7Ol90xgWYKM4e95uGIJcooZ/VJZtyvuYIKADeJnOF14TNit3kv4SroVJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ivkh8X2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ivkh8X2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2885C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719098542;
	bh=Ai/00WIszhE+uBElTxV8YkRAY3vy4kVbYU85544bx6c=;
	h=To:Subject:From:Date:From;
	b=Ivkh8X2tXhtZRjfgv5WzH5uw368v2tODPNFuXn4yMKWw5ymd7Gg7vP9dnNAlL48MX
	 5wGyqOYVeLEz+EQ+5Xgwddz2fO9qLu0EQlbN+vtAupQEVwzVS6OqOLx+VFZnJgsT44
	 DQUk2U36FSDaTMQW1xm8yH/hFP5lZoIfz+msrLWApnW0lYdZivuGuNHYNoSPzpsgJX
	 QcqvdzHWIbnLY56B5dKt5qYNVrGaMZ3cWkLaYPIM3r3rSnF30z2n2c+dWsb74YE7/0
	 D9e0+eQEYfpeT4eAXolvmEZUxwiG7qerXYY9oEaNjOFTbgpsT+8TyUqIYo2iB5PhT+
	 dNk8qB+P6f/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4CDC2D0D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909854277.24971.16858875365865241407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd647994a16136faf476e55b329927cdeecc2204daf90fedd73f8aa5ce04f1ba
Date: Sat, 22 Jun 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719098542
