Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B77346E58
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774783494; cv=none; b=kn4fCQr57eZNR0sSa5DgJSCV40wxpE/UNi1kz2PlLz1UVJZrZOAg1P1qqXOXNj1DRUmNrGXsXJzeocCt3RYD/LNIMtBt4GOkCqvI28B1F04YjnyLoi75VTvy68s7xykrHEwuWoFGInQMjV7tqbOG0ASlS/w0/XYBtxuozk0HvvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774783494; c=relaxed/simple;
	bh=TbR4hHdotgFiC/McO80xMmCb1a8q6zAVHsnTVYH0YZM=;
	h=To:Subject:From:Message-Id:Date; b=QtB6S9QpKDgnkVFIfi5zxFe5BQs0FxpDEyRvporhVvSP8r0xBprc6jBQhJhMa+r7OWWebAKX6u1hIw47hGGP8eApepLhkzlG0zioXNJFQ+eVEGzguIIksPUc6cqZbs/cbhAiF5BWUJcrbb6NMZVsZGxoj9WzfjnsdShkfC/6R+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZHNNTa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZHNNTa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774783493;
	bh=TbR4hHdotgFiC/McO80xMmCb1a8q6zAVHsnTVYH0YZM=;
	h=To:Subject:From:Date:From;
	b=CZHNNTa6eZvpyuv1ZYk0VLYEhccQ50Iv4A/Kj3nIcq68oz6VnFMDuXKuEly2VCHuL
	 UA3rRLbGSMp1TwpXqxXnXSufctjCoQ+wC+Lf04ytxR37MuAzQEyOY0C6DqgsTf8H2Q
	 5m1B4HCF+eeeSUKhSwvislfJlmrCtx1e7xi5MqvipFCZwL5wU8MtBOY32lokOZ3YjG
	 PzOPffUhAa3D2F1ab2wv+JuqBFZOJkmIG7dAYJc08UyrjlN+f6JTc4gH9Kj7jXjKMw
	 lNwAh4LR29eQ1N9IT3GprJAsrKvXGglcYzaTVwRVnFBZQm1fhrSPJwhe2T3uRuUk39
	 8blaf3OR6A9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91838F3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478349358.11689.15414091154552020588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7261e70cdef4364b50d690aa52305d01a67d835d970d5aa9ef74752d9cde458c
Date: Sun, 29 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774783493
