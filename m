Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C8213E99
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746601194; cv=none; b=OZk2D9n/9ayPG1aAbxemSqMSNy5jgSKJ1wxl/gzYyfnJnc5jGF+UCAHEMV5F7Ndtbt334OuJ8LmQPTr8aextKY0DV32ay1WFQNanX+V94/cKtPfd2ABO+iOu1aq/bHw4HqM60Q07/yc7bzLRBgK6almu7Dq+gUl0kTJwOyfGkNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746601194; c=relaxed/simple;
	bh=T3mh2GNqyOgtS2TEZTESNVEfKgmDGhJ9tQF7NFpibIE=;
	h=To:Subject:From:Message-Id:Date; b=ET7k8/bjR32S9fFLr2NQx2R8EUdH12CHsTxWVqZUJ1RT32pCQbPcq7Yrcz/Aju9MEQjuOZwOUaxCpah8DYm0nkkBV45z6ZOHne7tb78kfZ/Y1ydZ/TUoPukVnzfN88uDcE/mFgjRY+T2Uj8X+0u1oCtjQLY1tEliVlw0+HAHOSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpC3ONVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpC3ONVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C913C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746601193;
	bh=T3mh2GNqyOgtS2TEZTESNVEfKgmDGhJ9tQF7NFpibIE=;
	h=To:Subject:From:Date:From;
	b=bpC3ONVISNu21jqVmejtpV2NHMLsYp9T2xP13fKKHzId4icA9pOZlkKKZ4Gi3fGKx
	 cscWcorki6HFL0B3m/FfChU+NEovG01NItH+BXwpTFAWxMfeSSfJz6R7uIHYfG/i9/
	 8oX0vUNLqAmwvqsRlTZ3wWp0yfomJyUxFaVwWyVfOJ+89Vpb3UX3xatCasS4HrTCFb
	 AMkcnk1zAicn2DjBpJH/BTvtWuaBjYskQ2OHJD8yORAn9oZ66DDpU1tZjj2EnZEv6w
	 D4Y4qlwdClZ+LiTWU+vVS9Mln1Rr/fMOkCg7qQVgi2cPUJ8KQbL5Dg0LvjtauGo5KI
	 BPW3TQNdi8oSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FCC3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660119357.19676.10850664178814119363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2177ca554da61633298b255fcf798188e241cfacf0771017c898a77508e27df4
Date: Wed, 07 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746601193
