Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8041845
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65C7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672099287;
	bh=oTcnXh75JSaAou03AbZ0xnbncsmtRi4cEtoLbIH/zvc=;
	h=To:Subject:From:Date:From;
	b=NGSD2smP/7oMizJIKChKeH7NDQxVOs9ggGiq5yaSVrYrTJhQMpgB5QiFdD73kiObx
	 eAaYogWJOaHqOqmrFiMNZ4Lx3mrkTpp+ZXNXeZ7vKNo7sdnjP5z46BGSQJorKKdIm1
	 IT9NJQEN6f5Pni5Ab9Cyb8pdKdjHeGc5XCtr/Gc593vns250E2d0mUGoj67zfkVHed
	 uevco4EDbqwX8ten+q4g9sV0po5MeGvgKfCdvqN1/pnDgnRmbzNgGLOqjFJmBFgsRg
	 cYuclsXkzqdoSncjyoNGWhpx20a1HHe/xN1ln7zrLNiiVCHfsxbSCKFJnrZOfO9VVn
	 yEnOxmObwxDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92097C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167209928755.7595.15705750910096037271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b073a98db9438321b099f6b18336176cf6b7ba8680fd569367fb062b48a23c1
Date: Tue, 27 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672099287
