Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316373905E3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778688034; cv=none; b=KaJEoZgzAKY5++0xl8nUkPzpXBqghNQ1vbrWvNUS83u+UALKe+2iql+k90O5J7ynDhmqkyuPOmntXBsm2hBFZPlJI932kJGda0shQ3V6JgOl2N/XluWxQXiW4GCKUUJLMc771XKGiBsxQ4d1OHn8l25fY2JQ4UHOMDECEPx3kp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778688034; c=relaxed/simple;
	bh=3EuZMZWB9oaKYrLMZp0vMqcR5F+12qBfjwpSm2fZMj0=;
	h=To:Subject:From:Message-Id:Date; b=vDXdIRuud8oj+JjR4DET2sgrNFsGUoP6p8742vPn5UjAtS0e5w7orG+eLtqct+nzR5pICgDxVVEwVI+puZgqAKzHLkzIqtk2wSyfUngIeioByo9x6rpUfq9Wotp0RnzoqIa7gByMTO4+TzkOj7kkbQrIgloHSARsQYoO7wJye6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjWWUmFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjWWUmFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B988EC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778688033;
	bh=3EuZMZWB9oaKYrLMZp0vMqcR5F+12qBfjwpSm2fZMj0=;
	h=To:Subject:From:Date:From;
	b=BjWWUmFTvFewAmnXe63pNqL1ypPo9Vk2Zfn1FzOzo2DoGQjInxDQX2UuXLiJTHvuw
	 C5VuNmOqnNrbaC+HGCzYHEJXZM+pRQTKgX8LE0eDFb4b70e5WxjYEEQCtDHtewUyFt
	 RUdidcI2Gsu4PZB+rWPrSMXFd52VU5MPFLaqY8Vs20lXKntZp5LHAE1QPzeJmqUn/v
	 2ZAieFirl5/6qIa3FNUqtZ6BZDlmUaofXaDi2p3kQ5TDhZhtm3EsS0Bgd6OHRLiYwW
	 En75atN3gmakjFGwD9KDoG0Vf4ftcreIkObkpyGsXpTsRAxSj64XseTpOsXeSmDXZa
	 yg+s0j+LZki5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A2CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868803368.22809.3848685745530875642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cf18aa19462579ade4bff6d28f15af044113f4a7a19c75367f3053af1afefb
Date: Wed, 13 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778688033
