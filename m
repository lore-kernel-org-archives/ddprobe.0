Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E61D314
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4061C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693062848;
	bh=CP1Gxn2T0ukmI2SWEBttbWQFwJvno2HOizln7gJiGMo=;
	h=To:Subject:From:Date:From;
	b=FXDXgomM5eSdjEt+2XdkKMUmf7WLR0OCtpeHrCYDmh4vGDtVI2fFd7okNxM1Tqs0E
	 EYgCxaZYZ+zeaL92nHGRZKxXjburvkfexmbbWAck0tJFZG/7CqCFsYd345oBK4Kwrc
	 vm/gkhYIxxxZdCb8bJrnZSlhPtwKhw01sx64v74tBIFKv0kaAquj8Hzq66X7xML7Za
	 KGCv9/5h2uUBYtKSOv1UkjulwKLLZ08epzV68CRrOKzQh0LybbIbP3Jp/Qr4E9M/jj
	 x0KHs0Gco1c1lTAqM7sIj9Ox85kktlLgn+NPVbRX+BDk7Yt2banC/iZ6fciZUc3DG8
	 pj3HF44RC+Mwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6455C83F13
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306284866.24384.15529971877320605797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc34fad62f7ec8c6aaeb3eacd7a7a3b58d2b3bfa28c756cf4bee8361dd5e7880
Date: Sat, 26 Aug 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693062848
