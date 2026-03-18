Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08422280309
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773828894; cv=none; b=Wk7A3W5rnnZ8Kqs6mv4FjXobRLzYyOosOwqWUlMZogTLThhEmJ1iEAxpfmE9IpP4cRoJTYL4p8dFkK5QJzpSu4Qim3UwJ9W3i3GafGb0vCEmfWcdxDYuemoaFdGKEyD5HR99lKjVE/hEp4C/rqbvEyhBrf5c/rrI01rCJgMNRPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773828894; c=relaxed/simple;
	bh=s2igbXO5BjGk0td5IZ9pbtGKLzm8WEJ/LUOxp52F59o=;
	h=To:Subject:From:Message-Id:Date; b=SKtBHzedg0oDHq0IdH2Wgu+lxo7gbSeQlZXKSlzBgnHn9wwaJHR6NpzRgfzYMSPRFiOuR1FCSTyPpLHcA5yzf40dy+WKe2U9MvyPelX5xzp7l3j1Byo76+WeZcwKaN4r7uxjaDRohiDi5q2/qbM+Vy6/Ytpa/MJ3Y/Hw1Pl8R3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKw/8dfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKw/8dfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF0C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773828893;
	bh=s2igbXO5BjGk0td5IZ9pbtGKLzm8WEJ/LUOxp52F59o=;
	h=To:Subject:From:Date:From;
	b=YKw/8dfGqkQ2AxSKThcA4Udp44QPtqOm7tVeXkvFUJWPsdXt2q2ckHo08W67aAikr
	 J4MQEYLrZZ3J1VyCITfz3FlTIxI0g4FFIcx6BA9NNBkiQfQivECkYIigmPzL/NK+Eq
	 ktK6duxvWJVlv63vFEqgiNo++gK/Pa78N9F3PZAn9YeBMG9iSlYnXalYWbNZlrPv1L
	 wZD42PGcXAaftNjHVIiJkDTJaN0BflaRxd5uaE8h/pEQOAqHIxWqAFVtfVGECKR4WK
	 QrVoIxT9BwpooiFxpVgxjfMyW4j09bgtxgyeee7isMtaBBIenSOdMn9+BYcNk1UXce
	 bSleuitJ4RXPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52E10706D6
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382889357.8149.8215477513716643233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c459713dd41964e500b6d7ad8cef5a385920944b04b4c9f378e4364ea03615
Date: Wed, 18 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773828893
