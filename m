Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A276525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E8F2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679655666;
	bh=N3KUa7hh0sHHnCQZwY1enb0lAl768Nd0xfJQg9u5bqM=;
	h=To:Subject:From:Date:From;
	b=a+tBTWX1Qpo8qELCHpWDVSFC5xfAiBumAxFMl2cJfgi3G65NWtNfn9FH3Wlclsm1a
	 ezkXqwtWxTMFnfse+MeGgyvOlVq8HCNKQjbpIRKuqGZwiUOPVjx4Ce9gL7GOxSNqgh
	 sPU9cYOC9gRwG/UPrZWOwOMQDw0jyDP54NtWxVtQkPSIJuOPGaFB779IjE2ztxdzOs
	 4H6ePYtY4xNbPx0cDO89dbFlOpcF4Atu83uxeCK5SfV3yC25MzRrewHwwDstSxbqsX
	 EBjmrqY8WEMbqpqg3yZ6j/IzJ/xeXcx8QnnmcFs/IUjPwajJPUi9TIBeSxJP84AwD9
	 3l4NOwkdGgMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0783C761AF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965566586.14882.1502522947563356331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde8828693111659594cfcc83dff07d15f307c1f53d6d182e90fe056293f1a03
Date: Fri, 24 Mar 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679655665
