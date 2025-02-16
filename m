Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDFB17D346
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739748534; cv=none; b=gPdFCgPNOsZNXH64vLCz7WCUUTOsYWHFiB/fTSVwyrgeNK9swFmqKeIyRTTKrK+h2pe6mglu+5/qqspJPRbyfJ3MbzuMz5xtFCdDt7VgRJuQA+KlBG2Mw4jEwkkvn0E/weM69ogutG+P6db2CKqRs2T/KPCYqLnlmBZw67ZJKek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739748534; c=relaxed/simple;
	bh=S+sKJE0GKzJmqV1QN1rnXKovxy0XwXOF+Ub9Uopq3Q0=;
	h=To:Subject:From:Message-Id:Date; b=FijcH79k6DbVQz4dI/cq7d9Vp4asE0Ljmy01MMJORjqkTI8U7VT7SG77/BtjTiSYhL9lUODPFWH3Z5Bx6lnmvatBuavOvD5twf6FZ0Hlh6aOOZT2+XcjxgYk1zIdhaL1kp6Um6lSNRrWCMWUsCq6LMQ1W98paBPGV26UDnZemYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krqSQiQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krqSQiQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C754AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739748533;
	bh=S+sKJE0GKzJmqV1QN1rnXKovxy0XwXOF+Ub9Uopq3Q0=;
	h=To:Subject:From:Date:From;
	b=krqSQiQBiWHtrnTtIP5V3Q6362WBzvlnxr2J0NblnCsy5/swZGxKT212WaZV41J01
	 r8UshFHwFxqqNfE7n/oNnIA5X6MgyEqO0pKg2Zwu3915xEsQVedIQopj2JgToZ6qYJ
	 9Al/D0UJ47lI8aKwCrXJzfJq243S7dyCFQS7/r93KqFRBAxDsIoWZUec1KDCHDiwWE
	 34T/Zi5c8l8VFfKU/CrIIiNA0UmbS0N0+hVM1cjagL81uK96v5b3TW44gbQc0EpPQ8
	 PBs7K1/wejgSWe1soZUTibXdK4SsvJR+XksOie2vMg4Cl0CRAZAuqB7adsXQXjuyx8
	 EMjTwq9eSGTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92FC021A6
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974853368.12083.3892114181264340913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b861509b80447e28708c6caf2e74b6248ca222236492b1484549d9533f62df
Date: Sun, 16 Feb 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739748533
