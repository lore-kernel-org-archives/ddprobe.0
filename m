Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B12833E351
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775604334; cv=none; b=AXl85IQ0/g9d60qTtLHQXxbNxzaR5eVSrCurPgf2zdlixLQb9PMd+NVEGE6IJTdDsZo8SmeOY6mZ9kqeWwzf5hL5hcWaWvfjfwqWt4kaNUj1tez+g42K4sh9spOM/w/6C/VVPRjz9R1tng2cU/gl8/JtkWg7Cu41qmQzXkG5yPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775604334; c=relaxed/simple;
	bh=qTlC0xnbskX1LmloXVHXOXKsKEob1Cz2WfSk26GDJ+I=;
	h=To:Subject:From:Message-Id:Date; b=kBfSoBDCAM1vXOvdOuZxUUZZxHm6BDdAT7rIRRpuErzvPahWRVGYWvdhzJWlRRM/ROlOjzv7z8diCEIR7r8Jji3domWDPABCvc8rK264GXkWmhVUS1/QTMtGY3Fedn6g8MWliruMrMJ6WyWREBaErcFoG6srWcd/91JF12YDbfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9aU9Bpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9aU9Bpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1311DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775604334;
	bh=qTlC0xnbskX1LmloXVHXOXKsKEob1Cz2WfSk26GDJ+I=;
	h=To:Subject:From:Date:From;
	b=r9aU9BprsfvpbR68RUePreZYMjKs+YeS1A5L/rs9gzhJb/DxRN2erOZw/cHaduBNT
	 3VCQPVulO8cPGqnLiZ70SwK3nCyoAuJeGPy35QFNxVwf9S9dHewWy8pxL6b1CdtHRO
	 ds04WBcMq7WPP+clLzxe9OST34UyFbCWIY6hPo7PazHCAAtU+H4nAvVFBWEXhC9rWN
	 9Jj8pRhRcmr+7WtD/VtpHzvYDxMdOXXveBphbI+TMrXWQW8x7E/DI5Ib7xSvUhdzKa
	 l8n+64czfTMvg75Hw4Kh+9ndcwxpZkr68ka8ZJCgjBWNoitrIDcFP6kCeIrmu/zky3
	 fthNeve4dBT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB15DEDB7D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560433384.24685.3256467988586763160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078fd567e7cb67a527d59497253918644be6cdafb44480faa4b72c39864b208b
Date: Tue, 07 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775604333
