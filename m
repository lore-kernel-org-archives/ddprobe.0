Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545FB33E6
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 19:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECDD8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 19:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682967606;
	bh=qDi9Ta8GFj02aiRDwiJxXn/MkWEEpQ9KvzgTQqlFGp8=;
	h=To:Subject:From:Date:From;
	b=CFtoJXtsC8sdOcH6bfJ4cFUA2Mh4aAJDMMw6eANXxUqiBhXami33MX57++seN1sPE
	 yBQqBEQ3Mk5p+G6GSyPtQq06t9GdWl1QrNzTpms+k37QGhzpmatZpsvf0yrYMnvTt7
	 QsbKQiO33C0MrB0FF6s5EH6MJrSzDgVQwTsM/C/xVNib0y/93dV+HoAwTO2+g4xuDm
	 /S89RqGMe6L1F0aBSUCtBmHKeE3AuWTeh8Of+ZjewTSInzHim2v1i17hBCvl7tZLON
	 t0JrgFbfWdtBOwyCR08FOvHbLcuHy/1PU2VP1fxD1MwUH1UqyiEzoew5XBASb9S+UZ
	 /qJkFs+jkXPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEDBC77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 19:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168296760582.29856.15952108383378061834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a700a4527148f64531a2bdfc5ff192cb46699f1328fed038a18da99394d2c7
Date: Mon, 01 May 2023 19:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682967605
