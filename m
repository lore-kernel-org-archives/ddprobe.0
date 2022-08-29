Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1FC211C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7E0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661806252;
	bh=dL92fXph2p3KTrBkfplD/t1TFSABwKxsgqTCefh7dzY=;
	h=To:Subject:From:Date:From;
	b=WTcMEOdcDjohs975ym/HRSiBo4tJ/SzgjbqrIgyY696Tq+pMPsapDvI2Zggh7Pg81
	 7xGlDlGG4EjukVoEw9hHvtcrS1Gflg5cSroQB4wfOASaLA3ifqRXLVxtgkkiDOj8pw
	 /cFt/UCvlqjgFptBw9cKh7e+4He5MOEMgJCJNtdqu/aaTs/XU5Y85qwsRWNJLI0rPC
	 itZ9gq41E4+1+Q2RrrKWGHUhTX9QYvi38RUoBN6gRTj0IzO/TXn4hi9DO5+YALzkKA
	 2te74jVjClO6ggTP/D4VEAIIrnZ2a3qtl36TqdjimmZdsX84uNrG1fA4o+TwcLwAaa
	 7Ww1YJdL0hrIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AABECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180625235.28343.17831683342268892898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccb5d93dd05c3ec321b6f6edd7a5986a9162a2d129f63121a3bff713381745d
Date: Mon, 29 Aug 2022 20:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661806252
