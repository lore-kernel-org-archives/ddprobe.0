Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E495687
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 20:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0946C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692043388;
	bh=eEoEX0O4oHTvioTrF0rP2HGcuaFFg9deh9RvlHt7TQ0=;
	h=To:Subject:From:Date:From;
	b=hz/Na9gGER+XcEcO0cTQ1BqEDbC7sFnA1Ffdh5hc0SNyr/zWznq2irOnAkuEf7la9
	 rjzPV+OJwyLlof09N4QrjTBdRfzfYSk0J0s9bQTJbuUzbq60hbuf9KFXpTQk8u968h
	 djT7d2L3/191kNYE2gHuBNMph+k0lwcAFYN4IP5m951j315LjTRHSzE8iPkX53/bmn
	 c1sqmJcamr6syzRdd9nB/mxGJ+5tazvZw3Ko+96n0bVZ96PoqAGm9fVXqxP1riRnmP
	 ilmGcxy891bdBSDOMnsfn9Kh1RRtEl+RXozkj7jlbLUn/uj8SBMntc7tFglGMqhNyR
	 g4q5d6UHc5gXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B18C001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169204338867.2979.14078931398979812719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34457ffdef7e36ff0e5c1c9fcaf42b2b15f257d19d4b16515ec0262a9b566aa6
Date: Mon, 14 Aug 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692043388
