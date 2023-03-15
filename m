Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AA02563
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 08:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5B3C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 08:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678867805;
	bh=baW8kVE9/A9l2PgckMyOgoe+7lvxLn985CnLputCWmo=;
	h=To:Subject:From:Date:From;
	b=s02cRntAEXTxIR22jjTHqdMq47RwTHykyJyxqu/8Oct+uDg/Tf6dN6EZKYYFERvII
	 qG/G04XGtL9VXiNAhzegdVTXqA1SPTSPUN/70BeZc6rANi6ifHjKXgJ9Q1nnZjyqlU
	 Il47ZMZtEKjmy0pVq+KAXrPGf3EvkyzoLJfSlh4+2ZplxWpyWpnv5Ym5smltwMXFcY
	 oSj+4/msjvGCORc9kadR5STQPIOOu17tPmxFpFBbe5UenXiGjsmMPS7CTllAZijsnJ
	 yj00OqX8rmzpuClGgu+VQTmRSwBhsQU2ZjwcNC8dUan9x6L3MMUK8sMrZZ+PPzkNIK
	 ST3hH2lP/XW8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E46C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 08:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886780574.5097.13490113528216900806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0847ac826761ad0d661f2571f9bc5256daade9f868d61e1418588c45f84756d0
Date: Wed, 15 Mar 2023 08:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678867805
