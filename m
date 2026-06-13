Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE02136351
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781354794; cv=none; b=JHI1arzhqQH/jYMQhYOdJhejjj4K+mrXht3nwrVpCfCJMxIKyVdQkeGrFk88HywJASbJCBcejGHanUdPSWnM40BM8bY2ZK9Mcd0T+0KYivoRDzpqztS6SHmcv3ObzZ++yUGlBYb5Y95ID7oK8DrfM9IJrh2EiNPBhZRPbazVJ6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781354794; c=relaxed/simple;
	bh=tAzZ7sYF010eXC6XWeyb9NEc+b6gq7Uc0P8XqujVZy4=;
	h=To:Subject:From:Message-Id:Date; b=KYvz53ZJktDU4S9JY2uV5aT4sUrn80ON0DWuJVtwhvWGee117lqpOFRTCRJAoNuoshRHksQldDFb6K6dGre0qrFp4zoNHBKEs5ISGkLBbdJP7YJoZm/0jpuW1qjOkY//6+Q6h/v/57ZL8Xp7qVaR2aTj8ubFqkpX5wmYw5zmG5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsRE9VdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsRE9VdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D902CC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781354793;
	bh=tAzZ7sYF010eXC6XWeyb9NEc+b6gq7Uc0P8XqujVZy4=;
	h=To:Subject:From:Date:From;
	b=bsRE9VdARlMuyp4tnbGsBytiEwn5IGmGZjZXqVGkXye1JAd0n4qvicKByhj2ZLRcQ
	 WBB2ih/M78gAW1jTh2bcyWwLJ0GwsIDmGKkKblFOlLatpius2EGtMPQvWB1zWG6h+p
	 NoYgAwzKa2IEj1Bdidf0jkE5Ksz4yMeDgChZWcVAJzTAtqIEFVrXSePacdDqZCRI/X
	 MzUOXnXhoF9jZxl/iqvIMTdRuYXGtzvaXR7IDJPw14cTfvTMS/8jPvgSt96jU77E+x
	 s9kBQcdd83QKaDI6MC65Urt7nwRxJBcXvP4iKCz+Im0EU5fNCGejnasvKTAFuFikUA
	 crf4/RPDiRXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF60ACD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135479368.4735.6137913587085146536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff39564da196117c050411742a33be3bf1c2e12c7795e15f23996fcf7bff2d7
Date: Sat, 13 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781354793
