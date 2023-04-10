Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF12179
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681086065;
	bh=p55os7gLijLtM60byJQn/1W8FyFk8kbwNkVvOTPELxI=;
	h=To:Subject:From:Date:From;
	b=A0YwjG9mYp3ZiMi453Ev44Mzt1yqqWweTGOqD8mPBiyO6re4Io/8k+EUFgPCe5K2O
	 6QrqYH2V+DPyVwXXkqTRm/cBNyvkirFo/9KAtXQzQ9tUB2VZc1n868cFHHur/zXO+C
	 BTvFMbsn0fT0xrxtdhqFt4EzNkFAs21PgRc6C7WoVnDZuQWuCJjwqiK5JqGYSuld/Q
	 K2ql5tGwICg3IFnaSh1265HL3cAnDWcFqgpJnYHQ1r3ZQJmr1RjQ6SmUJHWLXRGeQb
	 D+k7f4ePvZVYTvcyZAcASUdmZQSoAW7bEMSsiaA7J1AUNh6tIGknyYoBeQ/WZlUI0x
	 qSk273Upc2dEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA8CC77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108606576.25202.10376830335596619033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adbf2b0cc7509145f0e60306eefdf9f3a7a9df3f8fe9e748ca289dbf8a4f7db
Date: Mon, 10 Apr 2023 00:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681086065
