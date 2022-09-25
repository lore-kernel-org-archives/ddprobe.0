Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EBE2117
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFA3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664096453;
	bh=otQDfu5hpw5tm0AwULUzeqC1bz2v26y2A6RbNlwwenM=;
	h=To:Subject:From:Date:From;
	b=Osd5XcNvNJk0S/B1gwJCICk0UALKvZoKfwgVPS3rkDEvyAmnw5uQGFRr65We8iTmZ
	 qKlLlDtkmCqOxoARkbXZQPq8PeABK7eRNPJ71UY+ESNre6PSf9fqCZPIduVyJsEtSh
	 hhx/OhBJX9cKQAhKPDpB1RyFPBseEvIwDRuSb6Qc0NzSrRdsFvj6n8h0t/7MaPfb6v
	 zPYkwKkxNR0LE5hnrC/ZDT8wDBvcBW87QipFBFyDWH6bV+zsVbAUgaVYv7aY8N9WdA
	 hnvjHqmacMdNqNYNyo4hcYdiyHG+lX7Oc8R2i+KiMbmQmu+Md176IEDTKgURxa5xi4
	 e80tCJTbGpNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F48BC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166409645331.10384.3880106030460554814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f802c25ca725e69d1da9356a16c22e7df61a0621a839d9014cd9b11860aa782
Date: Sun, 25 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664096453
