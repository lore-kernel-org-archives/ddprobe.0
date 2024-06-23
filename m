Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646E765C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719124343; cv=none; b=G8E2wTv95sa2VeE78r8aFZO7vHDoId76CbEIddQMutSXBXq/2NNcS/a7nKk9zKkx2O7wb9+Mki/U2TyVJcE9KiqpP94nJuWlqE8dxJ8N1sAT3PuC4g5iaLXP/hGxp9gwUg8B6NnA9xyHcN30PzMkKEB1oKnIvwj4H7Bg3uEnhEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719124343; c=relaxed/simple;
	bh=RAqmwitnOTUIPZmW6lFb+okCLPKcyAuZvdqPQBLdXsc=;
	h=To:Subject:From:Message-Id:Date; b=rzVwMSINNifZ+c5FzkddxnpSFZk63rqUP+Mt2K9mOiZZil3KY1JL3NiZ77/L+L0CEYC7h+f4xDWoMOJFYLYq+QMPN0cfGWHUrEHlA/6Sa0DeCE9YU6El8qsC2pIj3529AX9FqKxmrt6NloqpagRZO2RYVhWHZ/5HfAuTvtA+pHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnX6df7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnX6df7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3CAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719124342;
	bh=RAqmwitnOTUIPZmW6lFb+okCLPKcyAuZvdqPQBLdXsc=;
	h=To:Subject:From:Date:From;
	b=VnX6df7KmyOjN6dHlCYhHZ99mC4mJ4KtwkMH5Zde3Fu19WBrlZ5P/OKZlyG7sn8NJ
	 UW8BFClBKeQ2z90zGaADmcWkQGpX7XAdqcZ+yl6f7NvjSO18N93mm9qJ3Oj5Bl5h9E
	 d3uwYPg+2UHCon1Heb40A8N108syDcb7ExZFDViQLW15M9eQV2TPmyrAilSOu0l/cv
	 G4TWjGFfKfjWkS3QvmhfxJY2EEANLPypjQR9xqh98DXi4wHdQm+4ukxXX79LpYdCGX
	 k5COqnTU2t4IW5LIgJQDuTdMpacqDJ7tmil/ruo3Qc2JveSp7MRLT30XzBJw4vcGbs
	 ZSXBOl2jOoygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8577C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912434276.25738.4670255954320921697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae064c561cc25ce13e9b4f79dfe6fbbd42f9401618523252ab06f7da347b493
Date: Sun, 23 Jun 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719124342
