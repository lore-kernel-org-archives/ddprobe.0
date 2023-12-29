Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD0912E43
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqEZjl4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C76C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703872096;
	bh=2V/YZ5bPglaJrewW9RYx/qsW0sEHKVjsPtMporG8z9o=;
	h=To:Subject:From:Date:From;
	b=rqEZjl4z2ntoJ98/q5n3uiCEkaAXQVhqudogKuzqUy6FGpyk+FpgXtrXVK5tYzr4d
	 w/Czfrv7vuW4/jbc/5SbCKhnMOHhug78NYidEEN4QGyk60gPNZ2Uor+bv50SnDGrK9
	 6kz1ZwsYhyQGLIPu9ZgJcqVPPloEevbpdIdGqGU4Svsd8CVojb3lUS4IheSToA+igj
	 iNbO+a/+yQfYbTzfzHM1tG/rTXey18uFJvrFKcgSaA75oZZfubqcbEwQltnmr8oNe7
	 XoPIrIZvjNybCNAPXt5Cwg96+IUrGkMygu33NseHWrz6yeRUWnC/cU1MkBinebj0qN
	 xCyfL5CeuRTZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0C8C47074
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170387209637.23424.9355087637956809344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ca121be58a87210acd94d50cf159922bc22f1b5984785a69ed1939ada139d8
Date: Fri, 29 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703872096
