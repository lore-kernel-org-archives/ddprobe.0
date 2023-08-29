Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCF914F94
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D372EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693328648;
	bh=rYUIgedKhJKapoTnTxoaFGQLZRJrwcO3MsD8PQGwMBQ=;
	h=To:Subject:From:Date:From;
	b=S2G05SB1TGm4wFvgECR1Pqr1+It/zWAoyFssOLnsOM1lAGNkuEJJSCpb6wxguLF/9
	 qyo+QCf7kuAwlADKL9jZfFicdGLNK/DIg/Dv669Rdc1xFCgT2+4ERNh8UMp+GSxMWI
	 UefH+DtjnqP9idehx19bsUVLZXvShksxCUiJDtGu2hdKZ23MUQAhcz4CC4OdyM70bD
	 +E4yVlOiLUVJEg9AJ570PJJpWM5etD7mm9FlUUvuphhj9XltK1MR1lPtYs4FMZqjmO
	 6HfBGOUKvBL9RQikaNwwg2rxRGncGGyPWfVGycX0AbuUddLe0blRz6cwIgcmzBYO9h
	 iqESbYOeUmJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B118BC6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332864871.15608.17240282599805407849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b42c6999d6fdad35e91c84b4377164ed3db57c32390fd3ba66192fe101ded0
Date: Tue, 29 Aug 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693328648
