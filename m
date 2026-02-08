Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A6C3559FF
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770552834; cv=none; b=WkKbgmvUFs034usg7gNVckwkuZzpSFm87w+RJmpUvIQoDsWzOi42Fjnvf22Bfs3B+K0TxYMOvM2ddk4z3Fk4EZCvPv/Zqp3BTaCqPzvdXa7rwH5jQc685eFmBRj2DEmLIRJJOGsOqRPJc6fz8kEk8Dg164pu4Spjaf/2WLfC/Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770552834; c=relaxed/simple;
	bh=8ubmAbMvLQ2VIcSq2kMk120+FEoETWNE0QGDBMf5qW4=;
	h=To:Subject:From:Message-Id:Date; b=B1k4bb23BOJnZaQu+QsIfWOQap5157R2JCQtZSyvezLxyTzp8LQ5ZMRe5uubIYlQoPLE9HNZv+zyKtKSN+Ji2vRLmjD1edleA0cWOM9p+y8Trb3jjS8q1RM8Z01dzZ8UAiCBVuQb8JHCoaqAZ4v1uLXEQGjDltElwU5qo5FB0dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhIolfMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhIolfMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770552833;
	bh=8ubmAbMvLQ2VIcSq2kMk120+FEoETWNE0QGDBMf5qW4=;
	h=To:Subject:From:Date:From;
	b=IhIolfMykpaq7c0JqGYu4oQNRDSgRi0SEeggX8P+fjO0pyXY9IErJ6zuE9/7ND1ES
	 +5HWBU2nT5wtjl7PPZcx2ZnXHj6bM34JOoaFFvqHuj0sKTQqgq93Jl32Lzem7f3T4/
	 FfgFEWpHUynLNuA+4C6RozgNH9s/Gw1p33UHTHIVSQiZZZL5zYVTNS9rH0t5K6n6EN
	 dVY7ked2r8wVIgQBEr2rJ6i8eNP3KNjEzS3kAj/WbgmGJ7h2a76dxyzDlXGNSi9vzb
	 odzdvHJnpDk7qrqpOLKB+/ECTGXDfPdQ0UvZ9sAhdS0dcrpwFVgL7Yr/W/CRqkOY6I
	 KwuDLMZyIlQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2EEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055283358.21503.17539327615228927483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2914831bef22c5972dab7123d535135dd7d0277d3524278a482c03544231b7
Date: Sun, 08 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770552833
