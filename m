Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26782274FCB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766556234; cv=none; b=AAYatqiqbjx4RNWB2/UUCJKRgoU62iEAUCZRfji5UY0/XjtkYg9IbXggxWn3QPJ8oZKi1rTYFLcaNbHeX+A+CiWJqmjw5wE8ygeFQPFQqScTzgAX2dfLVmn0wq3THH/3RK4XyYVCySgVTvDhvX+dwUzcZDVqa6LIJN1A05erOYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766556234; c=relaxed/simple;
	bh=+TcnbtMXHhpti7+MhfBIp3xd1mnKbAFxs0UZ/f6wlvI=;
	h=To:Subject:From:Message-Id:Date; b=bjn/hyGmtq9H5gfJoqoNgrNkorxcMmn1X9a+/wItzXc42WRGRxhzSvghWXezVsN6IJ0EK158JLEtuqmLHtCn91wkZ1jmI6X7Mu94rJTOIS9TtPxik6ph34THzsCqZwgY6qCMevTWc/4tdIc4rWWRJpWNr1h8JrMjoNITcw6MToQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KO+aXLd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO+aXLd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4769C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766556233;
	bh=+TcnbtMXHhpti7+MhfBIp3xd1mnKbAFxs0UZ/f6wlvI=;
	h=To:Subject:From:Date:From;
	b=KO+aXLd6xwbJwn1Y7Xtzt9O7FgSAzC6YAAhjb2bPP3cuN9NlTLm/eq5mh5vewW7Ck
	 3tr3otq7fJCyORs6KI3X3VvuiNsZt0slyRs3wVhUzzjHH4F6Jcr4zdxLGHGsk8yAK8
	 ufgWuzbwYyovN4UnEjhAZ61xR5WPRUCs+LkIqko2MZmI4cqTrHJ/9UF2dKXni/E9Xx
	 RrmTHhBsbUIHs9wyqwHx01PcfQsW6G8ofRjTBhIaEoShavmPOnOSNMkb2PUwQETpOu
	 XLsD//08I6sFHvr8eh6vQHF495Qi1yB1gxcE5trFbPhxg2QYy8adgE1eK7RboNZPnY
	 p/0wJG4irrFLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C12E7491C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655623358.28370.3151732629086735907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05831c7ba242fb1b5b884dfe647443bb943a2eb232c1b3906daa970cd18f38ff
Date: Wed, 24 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766556233
