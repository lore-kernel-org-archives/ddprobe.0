Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF66320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7B6C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672665087;
	bh=Lhm6ghasPe8iQmMgkw1+2Y/I/9H1X/WVjntHD6ruMKY=;
	h=To:Subject:From:Date:From;
	b=XCrDMtrp4ZqtUk/Z6IYeZBK+kXpT+B0wOsSIvmuDMlcAsogLRTyiuuDBPMAEbi2yp
	 m3G73aQBCtZTBNtcJv/pzgI8vslS8miqgsTEn04DlYyVJ1qdhbMr6eSLEmgpf0mRiP
	 xKC8xvKbL2iJh5jqsrbRbdRsNa0c5d8+KQBiXxhVy2J1Bt3V83ClVojTAoSYp90BCL
	 ihngTlwHPC48/OA+Tqg8Z+FlJpgh/+nrvi4rZS5THTWDvzozoIFY7uS5YkWLILZM+n
	 IOwXATNBiyUMU31Ffns9ULkLUWFS3gnu7oT/B1OHs4z/EvxftBG5ZnTitW1aVU/Mfe
	 h66Nible7jcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612D9C4708E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266508739.16946.5609599937749479890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dac6182313318e4e3e2f569ba866058fb58820dde604f943ea2a00e557735a
Date: Mon, 02 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672665087
