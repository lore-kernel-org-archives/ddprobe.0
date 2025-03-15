Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6491DC98B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742045934; cv=none; b=h6X/802Jlf5jky4mJVstazhv2NtzWHIcvl4KdylbnudClfl28kALMa2THp+3M52AnvVntzgizJ6kTCNgj/4OV62KGZZ6s9/vojgnM8A4cVkV8hSEQgZ8KS8GnilLzOFpe8Dw6U2Uqo/9aUz3p+L1xGvvDTs0E0QYxkG+TNzaDTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742045934; c=relaxed/simple;
	bh=z0E1+KgQ2BDUd1Z2iORxFZY9wD31jlSHFbkaPNtGviI=;
	h=To:Subject:From:Message-Id:Date; b=BGybJvMCHTVvogP3kq7v+bQ2qtjAi3/4xaHnudFoJHAap1/vIFu9LLlcIKp6BnVbLfDl2REmsajxxqq2id/ppVahf0E8PaxsE1BIx7hLNkd09cMESPshXA+JHcgNpXhYIXwp3BPR7q7JK7s9gWg2REnfXuphAhw2IgCRRCZizOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF+x5q7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF+x5q7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2A8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742045933;
	bh=z0E1+KgQ2BDUd1Z2iORxFZY9wD31jlSHFbkaPNtGviI=;
	h=To:Subject:From:Date:From;
	b=gF+x5q7jXnWedkrkNhOcdLbLJ2X3QeLq1ZdyVpjNAaEeX4TBmGP8rqDRICRB8jNK7
	 WUlY44vTM/tCZ+eu79Kouj248qj0JpS3Yeeyhq+eHu+q+uim0O6oUSl8/NPQ562Xzs
	 6cAxrMl4SEQHuvVEwpkK+wD8wysJ9yTmUoMpOMeyThyh6238T7t6XW2BFNkv8ADP12
	 6gh/GRqhpiTcxGstrOMsu+nRW5IVI4D2nkl93YSX7b1fXisPFsDR+RiadycGCErVBJ
	 BLnmDpNoTUfY2oB+hNTiL3T+8T6qoHIo2Vd4D5/TJKJ6g8oeyMnmSik2wuv2lNdobx
	 sWgQrj4XNuNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8340C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204593366.29320.12759902370625339967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ce4db49c59a3dcc994d7d9284705f7476ac93623ebf52c0d9697f17f0f15d8
Date: Sat, 15 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742045933
