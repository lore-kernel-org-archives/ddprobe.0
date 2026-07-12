Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D383191D6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783843114; cv=none; b=jILn+diBWwDNycmBtaLqej4xMyTr+b0afn5JVxCRjD5OuLXaMkAg3PW0257+6nkCIVb+IJBpoi006eKD7Zmo+1A9v8xu1cP/YyE/qNeHGjxm83/knl/AuIkyGmSMdq8xOgKcdaqdz3wzRMB0ZDDTrYopL3TyhW4m+wZXrQGb8yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783843114; c=relaxed/simple;
	bh=J0wnSRPQO827wCXwCrYshjCKfy5IpfvB9R5lCAzP3vU=;
	h=To:Subject:From:Message-Id:Date; b=n35KtnxGW3biUYPEsuGrC07hN3eMYiNha5gcKJaODpd9G/GRju/xP0OzTBn6sLEKKq1xXG8PlPbpy+6r0pPO0g7K9Hu9tS43H9ZV7o4LF366bV0Bc3adfjCDq5J62n8sm0ilFeU80/DC1usoYU2KWzo0pnxGIodhMUSN5iey9D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohh0eFJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ohh0eFJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40E2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783843113;
	bh=J0wnSRPQO827wCXwCrYshjCKfy5IpfvB9R5lCAzP3vU=;
	h=To:Subject:From:Date:From;
	b=Ohh0eFJt7Rlko2HKIhodOcDZkydtjWpCVncfq/KUfBZSUSiu5FkWo3rNi1E0xyhli
	 HtU31L5ftI57AtaYbuZuQnbApJfPFX4DZ/7HdtHahuo07eUKjwH062O0eT7iRUoFIy
	 u5izoXQ2Hj2Vl1aMl7radA8YrRs8Iy3cYpdNuNuQ3Vp9aX/FkDJsdPb7Uh8qRgMCAa
	 jbYTiMrN9c7z9GQwHqPkL8VPy+drW/bYsnNbc5Gr8bUDWmHmKHwl4KlNgdjqwZfBSI
	 Gh5Mx2tF15lL63mL0i5MPTxVvTbBWihOEZO7q7tYzAZnqn1klWQxpKmKQivdpWbzRu
	 26F26gqNq2zWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36E8C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384311368.9025.4125811547485915691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf851e5f55be4404124c7a8842bfa6addaa6888d3f9031772cdc95c62d240586
Date: Sun, 12 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783843113
