Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7422F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDA9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668883854;
	bh=85AdVaQEBOK4kZ3ZigowH8IhyoniaY2HbbT31ooS5Bs=;
	h=To:Subject:From:Date:From;
	b=LBzfM5fJ7X71nzc2IepzxfiyLSXPVekGTm2XrKJxyZ5AEhWQ6gWIjTeQtJtlR8orJ
	 6LHh4zk+UBvU0aKXaQ+Dv6uiXCZ8byOCZhoNUHlYKW71sRSCi7i7IY1X/wlSceTneA
	 8ahuk+CweyzY+TxF+fb231oIYKycl4AhfR5yyR10x+ZVnbu07eeM2c6ww8w2VgSkDo
	 elFhE0fGBjWOpzeFfEj1+t3j21YMp2O4vs07jplG50IUMcex2cy1IRouYqnbReW0ty
	 f9pc5RkaUA4tYlr5WSIeLAxjfLNRUe0lYFGm8WM/xu+TRal9Dq71FngVdaNek1r63M
	 baq1cGnxuFvwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612C3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888385436.24899.8783148073981807083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84e0d467fbe84c58b4f2a88381eda4db86ba4c547a42683ab854f0364278c16
Date: Sat, 19 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668883854
