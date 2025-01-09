Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B419F421
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736407554; cv=none; b=Gctji9BtgxVJzgMwu5Y8BfQGq51HYzREs0se1h72Kd5FZNsH0of9z6UD+dbJvAzl1SjmPttwNmqVi+q+ZFAwDOfPp8rG90NRpIMxWy/PrCM3LkqvrvFUWgBXr0d4bizJlBmqrJvVkPmCWV1O5ZSBy36a2NjEgG3G2aE2ybQma3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736407554; c=relaxed/simple;
	bh=MzndAy/0Ydbgp4hQj1ei38Af4bMWPqXV4k9rrvxGnb4=;
	h=To:Subject:From:Message-Id:Date; b=cXyztW7e75Ii2kTspBz4dSi/f57S7ipb34mEOLMUHvWui+2nP4N8K0Z82gRDWQIQB57zJIzsFG6QMBS0O73IN0JBhg+8a6xJ8US6u0CsZQMEo3A/o1iNnCoVEo3j1Gdsv7Ry0/9Rt9D5OiqdjNnC5PXa7o1cz7Dls4vjoUHHVgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcx8PMIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcx8PMIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D92C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736407553;
	bh=MzndAy/0Ydbgp4hQj1ei38Af4bMWPqXV4k9rrvxGnb4=;
	h=To:Subject:From:Date:From;
	b=rcx8PMIJW5xAiGD3tcCI48Nu13j3AzaHYerL/8TZUVy6ematcitIpAOYmzX3iltZv
	 K1uTOL2Aiqks4SPEq1v1K9rx3RxDmQbCSdu0baD5Br1duYGD0XMX3ywKUjwJVYU/Fo
	 kzwZKavuDjj2pdSiKg4GLBE4yqDvX3J7XWI0YuZvMphtf2+ACqlYVmQkrp2PitqZ0C
	 4Hu6VbKhNC+29P/Sw4Gf22d5owIJOJMWX/x0Kl+JdRfiZSDbyg3SQPWL9OfvquTRRa
	 s2L+ew3NJWxF94rJSq3Fu7WwvSk4iR8gP5pKN2LjAf/JE1FcS9mIUScvydDeACBgWZ
	 LN6e/YRN1R26Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFCBE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640755363.13412.18287026221202943250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281dd68597739b5e59f7b80579444dcce3c1393e5165954bb19149055b596a4b
Date: Thu, 09 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736407553
