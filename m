Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB246EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F37C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673769687;
	bh=CdqGzjNlP+CcNKHKdlCwGNcBcDWBFQUhs4INxGgGxxY=;
	h=To:Subject:From:Date:From;
	b=htFT3dJ7lDNZN0PaYy5aLL5OyIXWXXEILcMxx2DpWhF410SQKGUlZcHLrcZ3TJ3vF
	 lfSvlkBckW8kUpoyAXx9aNu7P9dLqgoe7ePFvpKxwvZN1W1OqLZpJhaPhNeHm22oyS
	 LH5B6xUkuatYjbVdTFZKeP3TM9ZRbo+0rSLB0qoj8y+USZt/xliKLLI7TZ78M+M0Fy
	 Zz4Tgvzpy8Ryll2TRJkCqlgna1AbUFO0p9BbBAoTFV8YChpN0SbLsaqz2QQD6MhsY7
	 I2IWSOcrqcmooVlVvGvsOIHnK6DN5bKJGhMEwVMtP6VAed75Buh4LjsTPfUhvD9Tow
	 GU4kFsfTEoUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A378C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167376968742.12050.13251919779697651541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dc589124346ab7f1bbd27752c0a58499d76938f91dfaec8b73a897cb613212
Date: Sun, 15 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673769687
