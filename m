Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295D41C64
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733082354; cv=none; b=kEPTpEQm+geVEETt6SoGSirUGs4RWDpPx2yspRaIjE8JGLUBpfUqvnS1xLp1YNtmEloE1CERxLe2NOHV0DrL4jogLuQUDKimD/nQW3Sv1PPldsNqWFa6aHru/xOBVjFzz1NvGK5kUbLttlssluvWmOUbHg1pjagqk9D0Dqb7pOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733082354; c=relaxed/simple;
	bh=ARgTm3By6UDH6PUA6OSRl7ucbLK3zDnzz7B3sF1dhIw=;
	h=To:Subject:From:Message-Id:Date; b=JhWybK9L8RHvyEScM5ixvYgN/YZvFd4oRCAnm7ZJXmydUvOOAAjarrNmJzoCcr4q4vu3OZIkJmgO6Ix0xnadPh5tEVR7+iFlSX3hW7IrRGcy7NLCXxwFmi3At83IfthmQb4Xnkp33XZurNpOxtKtO5JK+bpZKi3B+ysL99t00Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH0r3zPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH0r3zPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB8C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733082353;
	bh=ARgTm3By6UDH6PUA6OSRl7ucbLK3zDnzz7B3sF1dhIw=;
	h=To:Subject:From:Date:From;
	b=iH0r3zPm67ikhVCjutEy7/O+XAQjOJZbBqvVx4ngUviSaWaoZfXQatsJdzOIMv7Vz
	 0IEdqcqA6Dgml51Jb2ChFZCQPFaHp2RbqeiN7GtbOFop2Ai+u7V0wpfVzGzPODCwY2
	 n4r5JW0Ig6qyD1or9ZkmwYjKWKvw0DNpTnW4VkRgkf8iufYGJFhQJlkrBbMwKf8Ege
	 V2bTGbI7eF66TjTOrS5pdR36BQGHdBUNozzTC5YDQ4FeBvKEqP+UWpMd9IU8hSnnQ/
	 RtdlRb8QIOi7panlKzqpdpxyIBToZS7jdddsLcjLA5Im6cBT8PUMpCuqEdPL84YLjA
	 bnsQQBZmXawYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C58D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308235358.12044.9313755546569890970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c306087f1123684263dfa3c74eb92099c63661c7bc14a157c0a316b44246b8d1
Date: Sun, 01 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733082353
