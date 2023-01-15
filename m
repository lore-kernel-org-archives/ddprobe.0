Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053F57E7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93CA2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673745087;
	bh=9XxtQrwswb/oqkui7hKEmK12G+srVuvIpqU2fQ/FJBQ=;
	h=To:Subject:From:Date:From;
	b=THMrJW4CZXUJ+bzedWEq83JaEOuaQapUq8FPPUIyKy/eXRlnQsyDvFSfB7yjLapRW
	 QeJXGfRPxNukSlwxcT5QOTshKo1x9m3Jj664pzYmJK01VhWTN2tEElxiDVlRFcxG3t
	 LrxMxOqsizwOaEP97CttuSQHTCAbR7KlEjYGIkfNO+T9QiNBIdufjRyIT+EMObVS8y
	 5jH1H5/KjDvQku1W6rOFO/p1aUJyLHTHAs0wP1b2n8UPQJfJCyexRT1fpIqiWfjXs+
	 SmpQ6yO1af8g8PF5vPOLf7fGnz2mhtgEaEhkBKSef4osrC/uM0o+myl399mGhM31DU
	 pfEoDOQj1pvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C36C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374508742.9945.3179326758550025497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2541b7e8ae02287d1990d9315f6a063ddf756b2cd0067ef5e294198ad2fa9ecc
Date: Sun, 15 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673745087
