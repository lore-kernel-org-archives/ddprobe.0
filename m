Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65280161
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E0BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691886188;
	bh=2RJnx9MFQrglXPlZk8rRlLYk/7sja7BiUkf/bWzoAHA=;
	h=To:Subject:From:Date:From;
	b=LIwJ9QMPtC+iGVNyB6L8r5DYihhdAzMmqg+9vqwzLfFEb6+K4kqV84v/Gbb+lwxiA
	 0gIGIa8Zb8O06yR8RH84yZ5IxqFDBV9jEynApYzcvGN+mkhq2OOJfNkpJ1e84zRma+
	 4aGq4gQW3t0ctR5qhYbXnkWHo3U1SfwVUseS95A78h0+28gWDRQ8aYKdDEj+dXyDIJ
	 8fnUkNNUGbYJ+YM6eObVC6RIZUTdihtZTBLirAc2gMFaGPFPtKPO6j7gZ4PZOhQF+p
	 VYFGrgpJeBgrEvlWAXUsLax//2naF5r96JFtRNrh3GNgfoHZMjAZmU5jguPvWDWwGp
	 DckUHWhRb1NsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD32C0015E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169188618867.29032.3558558820507096830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f6e5abe35c0e581dc3fcf1e850b8c96cbc00ec6fda9a6c0875d5930f432b40
Date: Sun, 13 Aug 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691886188
