Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4687A13AA36
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727604354; cv=none; b=pwEyXn8VzOrhO3jAnI9jJcOW3P3DqoUwdHqvSK832N8rJhWcJrIpfQAVgVvU8QdsIznBn5WrEhuVeX2Sq2QXwQ6+r5SSNyXloRAcXxqWlgemVsPt5OTsHADadNWK4gItWao25KNJGOGWi6y1N5t1WCjyiY8nCMO49UT5Z3j4zx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727604354; c=relaxed/simple;
	bh=UiuI0+4Jn+TBKQARoPjSgnILcKrJwKV9kPdsi8V+NLw=;
	h=To:Subject:From:Message-Id:Date; b=CD1hraF+y2Onvatgz+yulhgm/ZMtRkV/NXPInAv7N3DCbItdxgc0O8p287wnTXq5cUJM+yCMjYmirYCade3HzJwTcCjj6HGt8TImdPhZPDYGSYc1ANOkAbxP/qA4n+GBbJoQY5m5+yDwPYiFEEq9iTL52hQgZJZMjP2I+rZuXjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaRu+0ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaRu+0ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34B7C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727604353;
	bh=UiuI0+4Jn+TBKQARoPjSgnILcKrJwKV9kPdsi8V+NLw=;
	h=To:Subject:From:Date:From;
	b=FaRu+0ZAnZdbYxEPjubXsrv7BuY9Z/R+PV7vkI6CQiWThEc9+Sx0pJ3x+t1uY/bc3
	 JNiPLYYy3zwxGRn8dA8t4m1Ovp6VsTp5r4s8599bfteEnpKJMxPSD8jdpbUEg8XEqG
	 kK/DIhlkJtQCY4AX9O8tBIZUaDfRsZl2rvfDPnNByOXWnuVeq/bBdjtz0NKveD7GEB
	 hurg6DQtvYYxbMYyoAIQrAZB9+Z7Ru/0VrJlcQ58Jno1apJQuercpkCKAY6Mr0F+ID
	 ptXVOKgdUUlGM6058MZtaIa72j4FqLAIGMtOR86WV2MxGqnVga4zIp5S0z9FQvQ5+V
	 4YTXpLocdlqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED14CF6499
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760435362.30108.10493033561235849931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330689f865dd09d1597b4c0676c42ee61ceae9d5cba089e10bedfa1bc8516754
Date: Sun, 29 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727604353
