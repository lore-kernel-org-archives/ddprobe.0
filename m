Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AD325B095
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786032634; cv=none; b=FhujKgF0l0r41YpLJinJtaKJYs2jKFzXeQj6V/Vywb9PtJJFcKxm66J/NFF3tAoNlVIw+jf2YfW3qYVLIG+W0Sc73SfTzwmlTw3Jcd91wxdbMNsxxEDc9GVVbFqyFLMnZicwG/ouIBjeDjtfy4Wod9yjJ0rrbj/YzZ/rfpIwdY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786032634; c=relaxed/simple;
	bh=qYbknRGG9Rl7yHcelyKfj/u3raBeZcq+e/0H2+T9g0A=;
	h=To:Subject:From:Message-Id:Date; b=dVo4CAkfDgvZY/9tEgA1QON7UgzLNv1ua2QuLsGYAQ8HtYMJYGLeQ8NCiMDTrFPnB3F/bLQaPsP9cDPhzSdYwCkt4rJou74njfy/ZlywDRwldfKnY5pPEtHZPThC07yTITezJPqlyxHII73s+JMWozcSzLfrdVLJw5MOyKSSz2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbsNt78W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbsNt78W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE926C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786032633;
	bh=qYbknRGG9Rl7yHcelyKfj/u3raBeZcq+e/0H2+T9g0A=;
	h=To:Subject:From:Date:From;
	b=CbsNt78Wk+a07V4qeOr9uWmpuKrGO9nanVbSQLU2pjC02o162X5+uCF0dUOfIYBXq
	 hlgAbLB8hEQ5fyiD18FmssTqMGOm/224XuC7YWqnYitS67nYPEYDYV42UGmEOJLPTM
	 x8PkIUY6yEjL9XMMWQ8u7V87LGfOcxacCZsvH674QYOd5/1xsGjVyZ4u1Ftcvi+W0B
	 NWQc7io525inLEQ4zHNsEhBEb4Et7+YxocRCnACEjK7B/AKpy8CPtVfGYbSHZKjeaU
	 w5+SoWC4qz4MSCtWBU/YbWrz3WspkklgXFgmZ4VxAFyHrT4JDamEftw7BZE8LZV5h+
	 rA3EfVCE1T4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A7C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603263368.12090.3357050802221936150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c456fe21c21b40c884f8ab1f811fa449e557a40ea6df62f240eb95af4b58f6
Date: Thu, 06 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786032633
