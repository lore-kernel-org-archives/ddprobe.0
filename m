Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18E92D592C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766660033; cv=none; b=W5QZhMil0pub7vvTGxf+Zi6DjHnGy9l2mSK6iEOAoH2VXpH79KjwE3Xy8kIcCyq8OzYlW4bQKAmNtFfLVdBevqWGcsKJDjl9mkYSWxIXZ2Dkq5sZmWMjOtYoJFoNV/ghwxI/ZwpBpY4O6H1rYA/y5kpj1i9iZcKdoNFFE3dOGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766660033; c=relaxed/simple;
	bh=wW3oSkM7hWnbpXbL+EsTzn+7B2aPqgOAVgw16FEyC5g=;
	h=To:Subject:From:Message-Id:Date; b=Vys3mg0Te6Y1i5zX7l72hBmCNmd9pwwBKAlZ78sKp0a/CGAfa/gHAxkdsCeLJDViBRShCecI6BS6qyEuv9ktuLS2e4sAOnzK/9joNU3c8dFilYOyJkcH3Pq8HioDgUq4hwI3MQ6vBPzH07AdN4RBn/5SEmtLtpKklbJ500k8AeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVV9L/dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVV9L/dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57EBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766660033;
	bh=wW3oSkM7hWnbpXbL+EsTzn+7B2aPqgOAVgw16FEyC5g=;
	h=To:Subject:From:Date:From;
	b=qVV9L/dBs9pD03mBQHAy3F0GGN1vQKZHAiE8KpLK6Nlyrr61junO4TuL7K9Tlqje+
	 tl4zXNB4iWasxZbnRbQVof7L29fg0gc0Rez4/DNMWMujVwUBFu437IfvLeSNJFS6v5
	 vhodC29UJZiKTemDQvVCxJLNJKNPnnKsg6cur8J/8LPpTxRKtPGf0FD3QhpOW36TCk
	 wSKBkMEoFOW33y3cKsqbWOvli5Dyncbv7bGx58/aCMTXcfk3u16rYus/1iVTOqmPDY
	 21pMwbf+D7W+SoIYdQ13LMANYTLF2hzdsFx7tIfOOgg30ayd9v1I8OUystSt5zd4og
	 1GWbJ/iv5qWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF6E7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666003357.26357.4775910735380910769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e217424a5d9af8bb73291841d11619e453baf54effd9ed78b161097d629ef4
Date: Thu, 25 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766660033
