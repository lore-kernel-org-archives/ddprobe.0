Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3213B8803
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E92C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675120985;
	bh=X+NYsqYqUdDlDY/4rzPfYxeGXC+8jYwnTHokVHycRSs=;
	h=To:Subject:From:Date:From;
	b=HpH9EFHVw8iHDUbsAM39bm2dkj1TvQab0S25WUjmPVw0EfsR9YSEbJBbe+/4Oevwe
	 IX67KvbQ/7McbziyFMIQnGq2aS8b0q1uP9cdOCsH92oRBTxdS9Pi5eaYT6v1qruhoX
	 n75FLL/Zz8IPpSYC5JKd1+8OZDZrE7Lh1FGEAcwcg0M/+3gnPo7bh5gMusXNG6OS4n
	 ANH+9sM0fpeq6XTShWx+eZxDtgf8EiG18ryUVC8sG6wdLE2IjuiUXtGcQzN+8ZPr47
	 Y9NzKaRd9GiIcU5Jkw46q3PVtR66jLdqHsrb36puK2amplWDFbMdeHeYOs8ZxYiSYy
	 EAi3Yh+WvN+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDF3C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167512098576.14966.12277978431559644317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7dee2f54446c023c96a76d06dade0e3080780ff46ebf3413a329c7822896097
Date: Mon, 30 Jan 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675120985
