Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF19184E
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DD9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662824453;
	bh=miOjsCM7Sso1AvPaPzrQ7TPqAy/sL7UaDqNrrHYwkxk=;
	h=To:Subject:From:Date:From;
	b=UnbZ5ZJakhsQUPuhKdD2+i/v3/yDQcoH/i7awwZEdOTwqL+bDSyJ2BUOHp+xwBr2A
	 jw74wDPEFkueuUGdbNiC593l4KCOa0xuPTSQR11Zy7S35n0OeUUWwZr0q8nc6jJ9tN
	 lFt1upuWmtTX34YO/pxs8i4IUVCKG4YdgBFaxf3J65opja67xi6R0Zqn/6Ot3hIkBv
	 quQGMz2Hh7EmkQ48e8e6NsjowWLU/Ks0PsY5HrN9UcshFlSn7TpVUTDaFWYjKSyKrd
	 JF6gh+nHrhRcpX98pKb7TmlDGSrHwIg4Y8Dcu/FVclOLveNgdzCTiOKb85iCU2mNgt
	 jPpLwRJPtpsnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFDFECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282445334.22349.10801567715140655990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d23569386875cfa8998264d8b2982108101de5f5e5675e6464b00d70991a4ac
Date: Sat, 10 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662824453
