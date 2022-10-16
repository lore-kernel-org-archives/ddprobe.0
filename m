Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF1D7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764C8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665886853;
	bh=redWYuv9oKVBcAii3e7BJSyyaJCXLOEQdSjs6JlsKZk=;
	h=To:Subject:From:Date:From;
	b=XhTEkIA5Wv3HTv8HDL+6Tf3t5vhYgnk7CiVnpgHbQLq9tMT5U3KEMUifI5jNWqVMf
	 SEZd5Qr5cuUrjUyKpKXyJ40iYDJhveM1jzSmYyYGhd+PqJuYX3pw81eAp0p8ql4UvM
	 QvCZW8Nfs0gEQKq2Cl0wFUba41qoyqpMnjlZZI/QYXIiUBc5xRQEBo39PVQVFMsT3S
	 D3K5c9Ays50S8zXD1evqh3/Mnkv9b6IRfnZe8QB+0oQPaV+pwGEP4d5AhQMdF9nM/H
	 GmEotD3gNy+CjoNxNZ+xHgaolsWKROx8XwOZ5eZDRYgPVIhfhTwghWKgjZ0HunPtlg
	 pZUURINMYvlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58887C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588685334.10487.7720309651047666889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf08457d98ca014be1a7139c67724a05d27498386edffef7888ce54155c08967
Date: Sun, 16 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665886853
