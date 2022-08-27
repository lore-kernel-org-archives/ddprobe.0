Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1EB442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E383C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661625652;
	bh=B5dRRt1W8aynhWOm4fBy5y8jojRrQm8LBokbO8Ycf1g=;
	h=To:Subject:From:Date:From;
	b=P7xmRGA9rGD0x7QZiXny9o6hNWnYNrOKJ+9J2ogA4/qbFwU3bwTQ5IooOPCfb385G
	 MnMeyXpAG8gQOJsr/elok54LBA5z1Xuhfhq4fby/989Kzo057cwgGlRXHTv+spn+Vy
	 3JQ0GpssZ3SzOEnNTWBY+bAbM/anWjHWJ0eLo6wuvQehMqly6osyUIIY7FRV1GkqSO
	 nIXBC7H4/iKdJDtW91rjbU8muuKMifp3OQLO0fHfF9meh6M298JUQLhddRPTZIopH0
	 BNxOkQOY2s7XGNG11fg/f6R6iWsToyUVHeK0JnvHTZ11UOjm1/t7qer6lvKOBygk2B
	 PKx54W1zKaPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EBCECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162565232.21018.11409842226547350440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316e373170a9faecf386c912033f4d83f79ee484cee62ca00f7518eb4f02621c
Date: Sat, 27 Aug 2022 18:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661625652
