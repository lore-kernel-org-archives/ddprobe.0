Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D83715B1
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3981C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677904025;
	bh=9tdwkhc2Azu//altAgRewaWqsrx77QqYkKbKijmBgos=;
	h=To:Subject:From:Date:From;
	b=T5YqBqujYWshCF+ejMuPA5ZYMK/ox461x7P0pWjELa0x7A5b1wxIMMIVWOy3TarIS
	 /Hxo8hhlQlqL8PCIAiiFqUg1JiWa6L4l90hjnKZ8u8mEAVU5+u9SAtPOd4TaQXztPL
	 gj771quqLGWWUzrElefSaRPL7H7hyvifH6AxHU7NE6zI7DTjXMMqA1WI2NJb2l1bmX
	 dy9iENHAGDSDUOW87tPU1qthfTugK/64UbDmJKM981djKi5zKx44ZgaeLyIlb+e+Yv
	 Pm76seNXCQFAdZNrTyonhyBySCLB0/kqoAJIiMr7twZWEtiWma4EzlqO+JUO/Z0dge
	 rF+VGhRh9vCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B946EC678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167790402572.27227.6060412339698455866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12d47a88e3e87a2bb30f6834cce73aafc9881d1fe1dee3bd09f5fe647004307
Date: Sat, 04 Mar 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677904025
