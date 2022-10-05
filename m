Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C608D33D8
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3A7C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664986853;
	bh=BGCT1lMCOUl0orZNfEM7HUtPQcMbHR5JZhSMk1UDCsY=;
	h=To:Subject:From:Date:From;
	b=nkJ5cnh/Fpe3Okq4es7ch8BgRwCyZD3zIkIzI9vJN2cwYFh+EhNX5BtkVqvnw9HZY
	 l+p8wC5mRWixYpHikyGhXV2dUKQnIPOPW+bu8gSQkh3NbcyTi+W+Al06cnpWcX9iQw
	 LRUveS3v+ZcKTivxoU6S8D5K8Ou9eAydREY2hpe21elDivxqYvr2lNcAc0ijv/ADEU
	 t/k8LwKEVhkkmWvOGYQFeKB9/I1AS+0+7VLaMEETpSBgXuTmbAmzqp0LE/2jCRDAif
	 M9zLGxeA/bkCIMeav1sK9LEoylu7iTC9RBHb70Zg33yeDicCKUKKCGbhL7MIwjQEgW
	 OaXDgbSuYb5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51949C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166498685332.14706.14802297061568282424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c326c6c8094ae3400d43deebedd5488d10bcd9a7def8473870938c1841ce7d21
Date: Wed, 05 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664986853
