Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47F97F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AFAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662945653;
	bh=+z02+IerDbRA68pJwY4irxoP6sOlIdLq67gXpAIijJE=;
	h=To:Subject:From:Date:From;
	b=fW3AbCujRAymaW6xfnqwvAin6U0r8w8cu0r20aNRGFGUw0GjqMPRdqkR3UQkPlvm1
	 TiQHVPMbRdmDUi112+sg4JjOaO9sD+ikPgXBztE7t0r4/6A22wAPTkZBsemrG+x4hP
	 quQGypfKMQ+OKlrMqG1FMFwBszw0Ij+NcNGhYO1Oyiz+hikEYV+9dtAhKF5Vaxe7g2
	 R5mafxHcxNmiU5W2wfZ04VECCC2v+iBsZRXuhumqGXMKuGdisfuWIJ1NLiJZXUu0ib
	 OAJdUw66lN/V2zJn66uZWH0mJ857Wjf+kUKu8q363yPRrwF1ldJGpCZuVbSQLefbbl
	 CaBxlsuAU+iNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3CAECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294565331.8475.8755809468555714549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5836865838d8a637069360746cd315c7810030b149ec2fcda4bafc1ecd0555e
Date: Mon, 12 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662945653
