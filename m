Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0DA7081F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783312714; cv=none; b=mB0hJipksXllfdptgwUgSUWK+Ffe65gHLnIBZk+oPZ0F1JDcxEIkNboPIDFNw44nMpLpiqzPriF+foODYmEItu56fE5b1UE8dwsrGpHHVuT10NKb06Bc1H6vnRD7shQ0W5BvwJnkaiBMMDVOXQ6fC21YfyGYlNAjTy5fEa89xLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783312714; c=relaxed/simple;
	bh=9oK1F+8ikeOyVfIpstWqk6r3SzRV5OvGWVtYpqo6qIU=;
	h=To:Subject:From:Message-Id:Date; b=ukujltRkrkwN8H0ayTbb04PNRCIqHP7dfQDU+enBxrVxZFn7RuxyGYWRAO2X6nRpYw+/1D3CgvuAHQ+yZHBZ6kMX66LT7++4sCWTPuL4Igk0r4gj97qTmiX/4XK5NAt/I+jYSga2NGVnNfbbzdds5nQOWs3aEXag7GAoRVJJ+IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXmz3zwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXmz3zwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86D0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783312713;
	bh=9oK1F+8ikeOyVfIpstWqk6r3SzRV5OvGWVtYpqo6qIU=;
	h=To:Subject:From:Date:From;
	b=KXmz3zwiXzCILgkBW9pwE5LQY/k2pnDyS99LWDLmrUNGsluTE3FRGc8A0rCGEWjc/
	 uuL+hv8FU0Ua7Am60jDYuuyUhezGWqWyeRJfHaIy2VWD+WDYEfWkP/y5QcM/bZTRIG
	 I7O7sKOgWCIq/Jy+GClEKPK8/EIgnto0JaWYqICDL63V1m63dJSFLUY/owoYmLVQYg
	 5jo/rxUWKUXsGAuqxEJdZOnkum4FW7NuuxtJJ3CMQJDYsk69jh1/v11mGLjMffku4J
	 6Garnco2R8Y5I9YZKHzSsibTuGFhj9M0y4qwK/AaNJduQ9rH3+wvXMXXFIUwN62Dvt
	 x5Wd7oL8bwVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8383C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331271368.21293.2144780650772818519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2619fb3aa81ec3b660c24da51082e70307286379fce73ea777c5f59010025c5f
Date: Mon, 06 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783312713
