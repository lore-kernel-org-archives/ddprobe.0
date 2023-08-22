Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6D220180
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC96C433C9
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692735248;
	bh=YqBiUFCf0VhEiJmwjLiTMrWlLS4Pdoer77+q4A2Fg54=;
	h=To:Subject:From:Date:From;
	b=o54J+Ja8q2lg1I9S1b9J/BhpwOd4mxnq02LGph2TOHQW0TcglW1tYVNAX5yNNFgVN
	 ld7PW9XQiXWRmtAuUJNinWfMLDQW4qHdd0xO/BeeScJefpvXyqS+pdtrkKeN/DCqL1
	 XeC46KqH9SNc+4fVlBQZyGSOtVsMuFLZPfVDB2G+Aza8eY9vpGgPF1B79smmhWTz6/
	 YMWHMXY1wLJugjNiTdLTZEmK5+KySW0KyVTByWPPcFcBvZOGnzOJFdUHF4V16KiAr6
	 T0b0V2ptGu/7SB8QhO0Bk8qGXKVyB5eqPuRmlUwmDgr89uIHHwoODqLyEIZWggx5Re
	 Y01Yr79NwPOGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AA0EE49AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169273524873.19601.15161090158385901660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc678735bb60114010d8dd5c444ccca44869c66c940b24ad451bd104418dbdc9
Date: Tue, 22 Aug 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692735248
