Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345653176EF
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766843034; cv=none; b=ECx1eQejE39QQMgic5nyggrx3iJblLdV4d7/6dMDcOwFINjfCpqqemOe321iEfNq1aUAROFfe30jLe7ApZq+2nSQ1hJGVSSoUjCSXb3y3+qpo3RrBFWAnT+UU6G+26IpXfzhusNpT8SLTLfjgJQr6VcdL0NU/n6Uol20rY03okY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766843034; c=relaxed/simple;
	bh=/l4YrDmQN5VpNednP9EQgn7Q7wvuCIcqzEp3zlkXF1w=;
	h=To:Subject:From:Message-Id:Date; b=nKj+WYLqPSJdo8qFwGImft4M8FZpsRSdicCFkd1PuCS0ut4sm5MO4M+MQkEnHsjI6Nq+XvqDLp6AyKFD8j7+Z+sEHPvOK+fGKuQaC2r9pSLhGpCNrI1Cy0nMN1/tE8l1xkUPXHP/Tkt2BmiU5fO5PySgBc+lRl91LjvLTqJA54k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL1JgiiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL1JgiiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40DDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766843033;
	bh=/l4YrDmQN5VpNednP9EQgn7Q7wvuCIcqzEp3zlkXF1w=;
	h=To:Subject:From:Date:From;
	b=dL1JgiiNQCd3sdq4SrTrxPtdVBTg3A2irXEGrJHBoWZa/rX5Kgh+sR16qp4wtpNFi
	 UAQEs2zBu2q4hyLZcLwHwG7LhHDr+5IY9iKQkLF8Ym3Yx0AeOnVse2GlC/q605YMAM
	 EeDWUkEnIcO/dXKd4bOVGv7zRxvsSXyDTCJGBOrltlu5cv9cePy3QWQ2zYMphnEHzz
	 qNsxXDj2zodUbOHZCK+WUksVrXsoGmprj8z7BrSv/s95+y3nLcVXpHPXzNDkX8HhnC
	 n0u/2NFPqH4ltH0ZMf2ow1kmuPI/cZcsbiPQ3LZAseBaOfFfVdJg3uL+oN+4r4/sEk
	 VxGh9snuw0wEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CDFE8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684303360.19541.2467766306680130276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23db636211893ff4155bbe5838bf112a34191b63ce807f99ffc5ac6c506215c5
Date: Sat, 27 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766843033
