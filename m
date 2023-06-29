Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5391410FA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE24EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688049188;
	bh=a8hyBsRAXvDaceFV4loJfhIx8jKdH47lPLWZURGFOAo=;
	h=To:Subject:From:Date:From;
	b=OYyZ2UxB9CyncxJnnprzApfq/VKWv+Mfv7QzjOSmwLOHsehCPrzJGh/yhzlYm+Aaz
	 7LNh6jiVz70SuNO8pt77KW29tE1A6/Mq9j7Ot7TNhYEZn5SkezEPFA1l/WubnPBhAF
	 WpgqQCCpGaZKYAE4eh98gXgAFsWTZfuw5uMRkrKHvdy66ekPSb42oEf7pN8CkqVaya
	 BOMYfaHFJNixvUDKfQuGg79E7tDEE0E4dvSr/6xwutz3EnlZaAxQMesbfiJESyFlBs
	 tuXpw5XcjUwRKUTxCaHDBMaDp6mlxNFKIvpeVLFSQ9fFNzLkp+TOFG4ZahBT+ni9NF
	 7NWGhaJkm1fJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C9AC0015E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 14:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168804918873.17072.8399452963649172904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ae740f789a8821efc668aa5e1437902d7b8e8c6758e71978d03318f02b11da
Date: Thu, 29 Jun 2023 14:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688049188
