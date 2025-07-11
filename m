Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB57221727
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752273594; cv=none; b=jz1mzVyGncMJ1u/sfJZiSrfQs4K57Z3gXbZtdHcaHNKxs5aTk8jtzPYnQ7xBUovzb3qpacva39+FZ7SMhJDNGgayEDoqqGXMmJWCbRW69P/M1sKA7p7U3N1F+V0acSvE8ip0+Ow9OY5ZTsRMECvHSZfM3iOXxx4pnxqv26EARh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752273594; c=relaxed/simple;
	bh=/U0n8RLLquvSUlrFp0NgZAl53I2Gkq1fLyXpiVfkB60=;
	h=To:Subject:From:Message-Id:Date; b=FXmKztXF64mGymkvuiNJ5nrfXJ5ZZA8+tdX5xbXvwaE6SZKm+iH6C6q9EaJS8lvKEVOJ2WAmDVVUgqDAnAeY6xUJOL44uUq5gEIDyKSLxI4iq11KMfoU+L2p8kdqwxrDQBtPHmTXmQ1Zx6EkjDsyCjupxpuEIldffmDHrvJlnQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjmstkQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjmstkQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE46C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752273593;
	bh=/U0n8RLLquvSUlrFp0NgZAl53I2Gkq1fLyXpiVfkB60=;
	h=To:Subject:From:Date:From;
	b=qjmstkQyuk7r5NCg/H05Te0IY6XcfHoMNwsFpBy8Fek9rzSoKC82+D+hK93DvD6Z4
	 BB3xTmmAenyrs7tXDuZqsOpOZTMaF6+ryIstdwK6EQlMR/QAkbZE+jGrNxj5uLqOsu
	 FbMqzsFV9yTCtkACRjQ+4BCoSJqPTn/8KsOWhS594QFlsxh5DPz1X+KzwFJwdRB1h7
	 8SlPCA7+YEM56qSRWpZyYQtJ3gBdX46LRjcGujoqDG5+2yFMJMofo5tIF6fthtifEa
	 0sjucuy8BFeRXdTFo/9lWfRCeVGjHOcIZtD4QBpZqNXw5QF6CcvQOAdpFJevLrYFvL
	 ibzJOoZmOgVwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CBFC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227359359.22870.8898733048100913496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3515cd356f206a39d0e3611ec6bbbdb30a7b3933696e63b71a2520a3c4c1a7
Date: Fri, 11 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752273593
