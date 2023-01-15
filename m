Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED0010E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9588CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673811687;
	bh=Bcr9fvOJ/61Xnx0U//gj8pESYuTy0TQ5Ix63jamLe+4=;
	h=To:Subject:From:Date:From;
	b=Jq4Nz+YMdZKurnVOs/Zfp9SDP6hpyRc5zsTzcHbVOoaoCN7A2fUzDI9XS931ld0LR
	 R8EUO1iRXj4xB83gp2ecDV9CRh/cTDlAQSbOJuomrmqieULfF5qfEbTEqQNLgOQjNK
	 5QainYt5yVFhvmgzCh2uf80tC0iMPAy4EUuYzcNM3TQVu5OLU/VCt3v1EOzCS1CBwA
	 jTVgeoIaVNp/wklx7PpiHH5CEyN9SGDz5iJ1hMtq7Y6WGUrreOt8wlIvYf38mclC0Z
	 tCLhKIuNJcpg3+7IeWRq1CCCM3qhc26O4jZ0AKzRXRum42dRn0EwOl6O7NFdgo6h0g
	 eOtQbP44aJ7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7F4C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167381168741.16922.3681237766313052183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b93ea4cbcb6c20ced6750ed8f8cbc79324dee9bb4046d1f74cdae23539f59e8
Date: Sun, 15 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673811687
