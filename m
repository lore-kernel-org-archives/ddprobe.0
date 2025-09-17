Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF6343D91
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758102594; cv=none; b=UzffcGoaa+/mdxBctIy7deEszYwKwdoBdSGlgyAa27jl/STpOIPSbBCjpHtd2tVGiF3tHSM2mhcZXb4bpPmttMbHe0cn+7lgzujRFVhcr0Wdsjsus/Ip09nnZBDLR/FkQ2pOMHYKH5b51wEepdGhlLWKslsRyjnSj2Lx+VH0MyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758102594; c=relaxed/simple;
	bh=QHXHxdgogEV2M7JDGvG6exEj8o+h9mXVNcDfMqB1vmg=;
	h=To:Subject:From:Message-Id:Date; b=b18J3ehjbk7uD064E8N6DKIVIzSo5niHIggOOJcqakd6cSSSrGeOXqbS/75S0xH88Ct1biXSkM65GV9XBxqh+AAc0GkvhhJvYsipKKAyTwLY5juYMJ0udqSjFKX6A+xamS6DMXV/QOsZnAiUe9fLHFVhyjJDkp0mq53DvnRXmFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEzjHHvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEzjHHvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758102593;
	bh=QHXHxdgogEV2M7JDGvG6exEj8o+h9mXVNcDfMqB1vmg=;
	h=To:Subject:From:Date:From;
	b=YEzjHHvOquH8Pc/L1Ku5g9rXUqJpFJY8YlSSphnXpl0YcTTJWz1vZ3tBd43EMxM9h
	 cCOYRgNRCYzjuCSy6XGbXxURAL/X5tbGNg5VgPVTlqGxLLcbPRIOYJnzmIYjT8Ct/v
	 WDSrAX3nxVt/68jTbyYc36bRfpvb8j9s/4Q5O9gNuUSlLbUjqFXai5f/FfjARPtO1R
	 GomiqzJkgFPS/lgylG4571kUAr36XrEekBokQn8JMqoEhucEZPgW21jOQVYJcAtU61
	 0usWfXR+MWvPNaXT2DIHVOmo5t5RCoaYbSf8SA9H4EV8Bh0YxFx6MibnB/prAAR/E3
	 ZLDY+EOP2OLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91680CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810259357.3868.7890567788835811706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98566501bd50e8bd8cbd3bf52e3b34d21f5dde8da59e34b4680db8afc961398
Date: Wed, 17 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758102593
