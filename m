Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F752564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 999F0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672477287;
	bh=kT1Q8vKgZLFjl0sEEtORM2lYUv854C5jvd4XLL0eggs=;
	h=To:Subject:From:Date:From;
	b=l0aV9zi2CXKsl3UMg1yt5i7FFmANvi/XAuh1pc7huLBVcvOLAgngC0L7KKQvSGMwj
	 ETOMb023wnWcm0DTeH3kR54THLVIcgZQrwpTj6XeaeLuikP7bluENxOsgdZmJNBluQ
	 7e5850nBH2wRaNzRfJ1v4K4Knd3af5ULSmK08NqUlrl1hzU3vrEDYcT3yJBvI/wOsU
	 xwxkBzZzaZL8sPE4RFmaY0x6h84VvDSqaA7rTT5kLjqDlIlxyzphdWIFWAaH4uPvsg
	 U5BsEV4zlKFeVZnMTBd1BxuGe2az4ueqamI98+55oPMd4nsk8SfHo+WKxD3eQPdxrp
	 hwV9TJWDIQ4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C63C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247728745.28357.995008868535730365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717eacf274338f2b49a012ed37f79f30204dfb2b07f82510fe9eff12375c8de3
Date: Sat, 31 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672477287
