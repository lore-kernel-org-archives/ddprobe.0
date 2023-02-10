Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F9762A
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 14:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D400FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 14:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676039645;
	bh=NRimAnB631lGXpDp6nMSk5FwdqT2wQfj0PKcg/2AcHg=;
	h=To:Subject:From:Date:From;
	b=mK11XyhKT9uN9loy9gPcPpzkpOr1WXh7XwQfVhQBetYeIB7KBOcmCuKj57rXwsDEl
	 dy9dukKV1e/TPeGdzhN+QzjxY/T+1U4Ajh+L5Wn6IvF8XZC0uszQds/SWjo4mI8mgY
	 OwxxyUVQj5uENFgTlPIQbtepllXymYyOOoMMR8l/DOzyKQrEoVj7BzM/f5tfhGgBoi
	 hvRacUMauTl61f0m9C/44czVOdhENhQV5NVwVYcmYvoWoZk3UhWZ0GWqEtU2J/Tdse
	 Tx0LMind1Sbt/BR0m9hhTZuiIb0qQamr5N4PD3s/oo3+d49xMXSxzEE6Wy9tipCm1H
	 99gsD0L+a8QJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F7CC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 14:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167603964573.22195.17912650447767486936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fdece4fe7d08b135d5a9c8340caa53c33d1c9410a7c2a06b21627b09c1b32e
Date: Fri, 10 Feb 2023 14:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676039645
