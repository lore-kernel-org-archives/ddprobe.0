Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF67154C08
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728243354; cv=none; b=RkySaLbv9Smq7lrzNaDxmdxxutc8tFMxQ4MhH9XQJYYXBpjzHHMM1KgNHau28AhPjlC3bOhErfmaRbI+LM15k/BDdseSApjUvT+G++IFAqKQgLOfJdC7/DUP0RuH3owb9MWxSsQgjlS3MsxxU6KkwYQhJmIptrJYlWdkW+7n/Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728243354; c=relaxed/simple;
	bh=Fccmgkh7TDyO86YsVvu1duUYT+EbZ5wih0hsd1LG/sM=;
	h=To:Subject:From:Message-Id:Date; b=pjOiKSDAlRF+CleN+9VrrW3oZAm1BYstqHxCEE4c2m8cISkzE9L1nKuRTGJGp/dKBVXITeegFiuFxz5GHOjTtJ0SV4weOlBH2KZ8P72XCh1ofP0t6m2fR3KKvmY6UXTqtk79rUdAE/1Bu8T6sIQ5LclByGtWPBMmWtn+9UU94oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vuuijd2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vuuijd2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC720C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728243353;
	bh=Fccmgkh7TDyO86YsVvu1duUYT+EbZ5wih0hsd1LG/sM=;
	h=To:Subject:From:Date:From;
	b=Vuuijd2sq39v/cQ4/Mv1XcTgl+S2SEgJkMlOXq1Nefi5uzxKCiJvMJKBwph1LzGBD
	 c4kChjo0TD78McHADPzhA6TuL2cDG+z0DdkKEsC7AGXt/DwfVott7uXa1g0OFdgiFm
	 yy/2Hl+K+c1tDjNgkM7mtMp364Hy7mME8BlXz2ZMatdLka5qcAs77J4uadmyh4y8wj
	 5RMZn2IoxZffkEEz8VKX1UyCgDpupcVSG3e9ErPJj8LDn5oQml1OnECEqY5e3kEIBQ
	 o+OMZMBMvoB+dzTRbqQUhz5qfrwXYZ4QGf+S9YaLhqb7l89Usfr0i+LNe+OvgxEM5g
	 8BdHMZ10WSbXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A282CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824335359.12091.5461734842259768366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8df06d43eee0030492e138fd4188330cddb87ef0dfede37906ee36b6b02f598
Date: Sun, 06 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728243353
