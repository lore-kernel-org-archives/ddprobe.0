Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8498F47
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNPY9Rly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83691C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699856296;
	bh=Z4UAk5hj31FENB02SaCJnROpAb6EKMMF5EFO30YclNU=;
	h=To:Subject:From:Date:From;
	b=aNPY9Rlyci7iUJqeJwviMdwzzgLeYM3Q5IB2CDsk7SR9/JIQ9MpzYFXg+Jk18N5KT
	 w+YRf+ieEdM8bCfDuSkeFZbn15b19xmI22TmA4NhpCyyuvFyGtlcg1sv2KvENVIxc7
	 jL/CFNgQTVmWzMQ0/biUIE3dEBIIxuAa2EfXcQu0eRLF6aEIPZj/G/ebm1gTt3Dle7
	 r/wnLzzSCx0e5gMFe5y80r34cCmtGKtWYRZlYMdHzxgdSolxgmjS7ICsw8aY5l4QSf
	 ZIsazlyEPAq1dAtZ1VeIe/C0AjNPZdNgX/q7gCwlK13zbwKGbEmGWSgGOL4CzGxDRy
	 Sa5ssMMTiohBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B15C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985629640.24544.6867124829887565229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad58b5710613e8fc1a4e973a3058ed52b38574908e7d93313531cc541358e7a0
Date: Mon, 13 Nov 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699856296
