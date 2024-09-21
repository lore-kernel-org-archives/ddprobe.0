Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4491714A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726934154; cv=none; b=ny4U9nUYGc7c0n0QPAZJK4krJH+rMLPsBQeQyp9gAFPYFJBtVxYBkVsKFNygpYuq9YU6oLhwgjcxrntwOTvF+yFnEkjplWnWQWBBXkuVvoh6yJNrg6wAb5BOST62TzMtL+VenhObDLnhQAbSiYl3BFlIjTk9O7bPSpIMzNH0ICY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726934154; c=relaxed/simple;
	bh=j+uxQFhyjb34MqR2nMdxeFz47kda+P5LlRb6oQ79qHI=;
	h=To:Subject:From:Message-Id:Date; b=jXowIF7UMm/MUvIh8xObOYTS/xvCCn9WA4U9fTrV1VQDIRE/7rQSZzXqJtWZUH7bsecFJNUdFZVhGzMv4Ixtz304DVu85XSXT10W39/Azi1HCvWJv+910IqOp+2GhYF6k6konKc6QYYbWVDnOlpFq1Sgk5Iasc/93hm93+OQAOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dssSp3wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dssSp3wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726934153;
	bh=j+uxQFhyjb34MqR2nMdxeFz47kda+P5LlRb6oQ79qHI=;
	h=To:Subject:From:Date:From;
	b=dssSp3wYk57eml3LqlTH5RHx+mrnVmoZcNrLbUuD3e7h4ASGx0jp9erP+vUowb4ie
	 hYeBsqSCAdKCbXtMuRbpPk5gTf6vBw99ZsHY96eRaKbgGs8IaxXHGE5bEY+pWhWONG
	 8Lpd8fQn93Le959au3QgA+d+fxnA9qw9c6CinON7nHIGXT6TV0ZZF2gtSYwg19npV3
	 chJN6lzFSglzdjbBEyPp2BofVHgOvpu3stHWmWZwc9Fys465K2XSEfTBnU/+Fzw/rW
	 xOUJP7INhzu1kBcUdaLP+mJZmBM4NVhWbsTQgaGngu3QwmT4Xd0T3Jn70D/y9wMQFJ
	 9h7VoTjYQsZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EECF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693415358.23610.9668884085311315134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80648f5885e2d7caac5857b8d674a47d1694d3f9c02472bddc674356bc614f4
Date: Sat, 21 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726934153
