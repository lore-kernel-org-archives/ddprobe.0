Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE5E1D63C7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746443994; cv=none; b=C9YcGKXxX0rhgLDQJqHi4YbI99r9aWJZ8VS4GadFt8nDSsfutNKmxqzSnTkatZ/SzDp2r0yngfXHWLg3Vk5+jwwNlTJgOknoAmXKQ8AOKPdn0s3su+WnoRCCQJbN30Z8OS7PWWNZe6AhWjao6xsgCYye96rrz/ogNRCDaA7OHPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746443994; c=relaxed/simple;
	bh=GTV3WpptwFjLxUk1KEYlGOFFhko40HJ+KJMODqq6daE=;
	h=To:Subject:From:Message-Id:Date; b=dm4UvFBrap/u11zu2Jn1EAdNDBvqDkK7k0xQyqe45k8nF+9ilqNtccMDbu6PNjGojSkyit9Exds3Aj7xF9VihjC5foMDy64TBTUvWat2BFmbeecZ/i9Dk3azFQV/oqvJmORbA/c6AY7PDgmNMv3u3J+WV/LI74EMiAATNeH7UyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfNJE4WO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfNJE4WO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746443993;
	bh=GTV3WpptwFjLxUk1KEYlGOFFhko40HJ+KJMODqq6daE=;
	h=To:Subject:From:Date:From;
	b=lfNJE4WO1RGjumSG/yyRJzlFddmt6dHm1jcn0QllJUYIbpGblC5xWV4Eee8/z3W2N
	 k2PT4xvFJh2H39oH/3FvBY1Fn+NUlqaQvoCFMNVDFc6PKp6VtMmDzo7cB1AVpqQMmD
	 0hh7JNJeNTdkrRi+YJ1XpWS6QYKOGKnGKv6wC1VhMZkugGYOk8R4H6s4Y+euY/PzlM
	 ZUQORgkAOHwpRGxoq2nMsZbdtLkUaw6O8+tmqzC53aMKR3kxe8IH7XrYUozx3WROxH
	 uC44Al5P8DBwWhkV3aJFKiZgny1Fg1MZfCspg0SOR6UsDLebeQWh30QICI2q/DY6tn
	 U7LJtQFI5wUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B0C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644399358.10369.8531762340803055755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950a48086d8494bb438887c7e39aef6d4c22777843479047dd355919a9854c5f
Date: Mon, 05 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746443993
