Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A602106
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOLb6+PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832D9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700901496;
	bh=47Z6Ut/gkFafgGUPvlUA0vwMf4Usaf9YZAr9umSsfVs=;
	h=To:Subject:From:Date:From;
	b=GOLb6+PANW/qolKWq2cGE/wRr0u1wP8YiRzYW5IahRJfdFsfyz6G4ZZTUPowd81B/
	 g9nsse5Rtc6CZaFgw9x6NzfSXuGdvFsv9ePNJmKz8aP3odBhcqZSeVfhnCwghfXbBj
	 Q91bp7K4zO4Bdacp5aEf1VO/vnjCx5/Kcj/EM1d/Fqc1I0tdsdRIGy9c803RUJAsFg
	 zDKMlfueptJpyE+kYtpIUc41c8D0SUgjXxU5R6alaTvftZ6m4tJYzVTpTMejNKXX0c
	 dfb7Hnz3x0hBtNx1fAud0CMfj8HdnL+GPVmSkmTHRGSUFDBaoy2hITzYNEZx8vps8H
	 dDw65HPYZVqlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AB4C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090149639.26046.11646177588796984464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6211ea67e3ca8ecb8b6bc9c1b7e91829167397ed090d463c30665eb87476e49f
Date: Sat, 25 Nov 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700901496
