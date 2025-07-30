Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF372905
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753910393; cv=none; b=fd0a9SMWLOmVQiD+3S1uFesZGof3J8AUZyv6Bpw2FdgxFQoFmSfOl4nRwmdfewCeABQkVkcssSlgvpPufo2nYI0pddP5pc2Han8M0CZ31LOAdNP10Qdtw7vs7xHqVreKHOto3z8mI0bGVfuTLyVa0g6W48VkTJbYuNMB/yBCG0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753910393; c=relaxed/simple;
	bh=IgkQvGSQ4BE+dEf6jbLpchpZ/k7kEzAze5lDEabCatc=;
	h=To:Subject:From:Message-Id:Date; b=eQd9ET6ZO3ZR1G3yWrRHC6I7W/Vd1WETVsYjOS8h60uuShe+mNZBYQeD2AziAlzI9Lgq7rUYEaFnIf4zvjLMdtPzaQFCGDk1gZ2mRV7GaPKKxBlknYnv1f9VGqJN2KhwAdAq4nvihLa26YLOgH9LBZJ1XSKDR7dQ1rM/rmMHnPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGvtGc85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGvtGc85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753910393;
	bh=IgkQvGSQ4BE+dEf6jbLpchpZ/k7kEzAze5lDEabCatc=;
	h=To:Subject:From:Date:From;
	b=XGvtGc859thPmImMyLI59260n4/UiGCeuKORW7pdElGN8+3t1XllnTHH2SnqtZhUv
	 EgngON5AULprSIfMw1l6igDHfVXkeMqHQd3Qg31UbQjezj0BHU6+k2VG9bIgIunTWm
	 yEiL1EThKyxogc9s93pG+h8yUNJCoRbyCJwgmYpalRz5k8RCqCqgCu6unJHhwGUtm+
	 P9hDHOGABsKzG+kN5OqkgD4b2q5CkOY3uC9KVPiZVTdeRs9+iBbyiM+r4/WNlNCGad
	 rSoAf0GpWjO8gSbHEuS0BTQYEt/ND0LaakmykRKbfrKaRGsq2nwFLfCWQ50XOv3sj7
	 yU1H6LpgrEoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E56C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391039358.2617.18445839099442524979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f556160469148203597cf01d2e8d3461492eb51fb0d689c1ced845b5c655d416
Date: Wed, 30 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753910393
