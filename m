Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B8837A
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtQPg8DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EC8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697201228;
	bh=5uPg2nb1B0e/3HkzfHV9OvGCE/LkkS4cJkQSYveGpi8=;
	h=To:Subject:From:Date:From;
	b=HtQPg8DW+8CFycDfXpOlzJSOX2KG1MYotUCNKS3OHBivcGApHvp/wo+A3se8dW7uT
	 zLddEk6AbKTLnGoU85gpZiyntmUjc7ihEeKbjTaWx24BcKOJJZcXNqYVH3beG2Xcx1
	 rwI67jMV67et9anI+6eiRmhJxS0Wv9DuoUfTqmWibnp3brKo2/xX3QYw9CDGNNtyTY
	 0sakQf74qqhIdiB1eWDfiQ/ij9vTOujcIxGuo4Amacsgr8qbNTLWCfaNf8R+yr9nLC
	 t586puVu6LrwXZqKX+6gvthP/YBQ7WP4z8lGgJuxxPcIBejRI0EKCd+YZQ4qvjUz+7
	 +VU4KjvgSMz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C08CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169720122871.11986.1919770902854329822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008fddaa170a625c48b050ccd3f6c397cf59e9679f113c7b87bfe9f0f8a07bd3
Date: Fri, 13 Oct 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697201228
