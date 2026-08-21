Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FA947B41C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787310634; cv=none; b=mMWWMGXwEt0MLF/M7wW90SEUQyiAplQ+IgYq73pfQElKORkVcKFWU2Mj2gjzOFK5BrPILx8XEfOAbADhj6z/LS1jqZqcG4Pb1tk1i2kbBy+isBsmhJ5yehY9BT0MEy2yhbT2ADMJZy4BuLXsE4f1u8fFyW1M8d2tX5JGDs/nR1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787310634; c=relaxed/simple;
	bh=XuB2EHrk1v+camBRgsI+gCm5m2E9MwVbqCGsOSUPpas=;
	h=To:Subject:From:Message-Id:Date; b=L+p1kjfCtNy8mmWlUDUdRknveJIu3nMC8QiqFJY6B1NBuixSBDFFtDN8xtx4/b5ZcOKMK/cfG81aWi6cFmXt4qKbTO65P+/RNWjAkbx/9quR5UrkUDCCuzStXCrij3e/oXIWzhmeiX3oB1gOf3c4mDzdSYHCNGkDaQdHPTv2aKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vH13L8V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vH13L8V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E9C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787310633;
	bh=XuB2EHrk1v+camBRgsI+gCm5m2E9MwVbqCGsOSUPpas=;
	h=To:Subject:From:Date:From;
	b=vH13L8V2YCDiIFmoBwuHEsOHGlVQEZkP6HLfizYEShwhDCZW7/8HCjU2MgZUvMb/i
	 NI6NTJx4abkovYsRSvHY1z7quZquVkqz39m4gPq3sdJDBrOH/DJA+XphYikzQwDezH
	 mtoDqS8ISNcgPK5IzUrHy0CoBE7LB+ymjC3tP1cEjd8w+O4yKjzHEz9FdAovHi/Zgo
	 IylKkuIyLMU9s/c7lqloXZdPzbFHTuOcIM800x1O4Dr/bn4xH9SaKKGqRdoAHKKdeB
	 hzZmAf7krm96c7YLM7e7t2B1rh+HQB9RUPO2cuviKwIX3wddC81FrRiOHDbeLQZVaB
	 5pKq6Y8TwyJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B180EC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731063371.9249.4320090089864251946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2088564a1c2265caf301ab08966cb69387840e4e44dbb1135ed4420455dba348
Date: Fri, 21 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787310633
