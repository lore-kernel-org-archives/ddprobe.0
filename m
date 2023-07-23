Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D144C7F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 21:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9A2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 21:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690149128;
	bh=QI0iRoW2SvWtnxLXmTf53YJWl6xTnoEPbCcA191MeDk=;
	h=To:Subject:From:Date:From;
	b=LJ8xNYQVMFrP4Fzfpqt8HH1hTLxdDZHXw3OCIltCcFr0MgACY23ZtfnEP7u0nAmdd
	 wEF9T+1aO99qJTMUKJjnuNi/W51C+m6FWAfmQGmQQYoYN8QfIycHfOSxm1UEaR84bf
	 GCEL1mzNl/0voAXWtY792A5tbtHMObaOPr2bOZBkCjW1kE4A8DStiusddT/Wo2KC54
	 gvEPziBZlMzMvOPp3Uy3O8c9h8R9rsXbRxq3RY3Gi8YpkVa+1YsuhapOBsLz4b1rkb
	 fevV03BOhnPmbBfHgzk9+NhvMKvLSEyhV9ev2Y42iBDAwZNwGlpwybDwhCswVwFyNB
	 NejkHkocWPokg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34D7C001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 21:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169014912871.20603.13974420360538262470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637ca56615c75663c7ea416b8166428691d989a3da069fd02b995529f50c4672
Date: Sun, 23 Jul 2023 21:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690149128
