Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD16623
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E564AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693705448;
	bh=+yNw7TdpcOcCZ/81uj3a6TrsQ3S0pdkAIFPLweAVN8o=;
	h=To:Subject:From:Date:From;
	b=juB3NtZy7XyebG8jGtJlIPXNtbwIy3ksW2ib6lUsPynOAT1TryAlBZc7ZxbL6v7LA
	 tes24mwJPU2r5SAenYSnJPPlU71zQvp0tzMmgXuvZo/UkkMfaslF6OTqrHspLSWVVa
	 ZmSCFkDKMA5jNzq7xv1mxjjgOvWIC3mI+pBQBuGhcHlk5Fd0MfT9clryOvtyVM9I17
	 WvyYnx4z21egrzdA0rZEuNEHb+i03jUdkFndGQSuyrJkZJh641woycunAT3AXE3hS3
	 lv/T5e+c955blnftWfbrTBeXaCHgvDndeULd4C94BKd3S4OIuSvfX0o5ZgU9Toci8o
	 nk4cYhwq1CJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BB6C001DB
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169370544874.30386.10272342211544616582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc02853c2586e3b6b6c460ac0cd50d1fb4d4b6a2ce62bbb990a7c1b14d9ace3
Date: Sun, 03 Sep 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693705448
