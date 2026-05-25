Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F0D1A0BF1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779678754; cv=none; b=PUNo5lpbmhvf0Ys7infLSgZctRU36hIscRiNsxWk8Z0RzFtnn4aBBqy2Dcmc+88uZeV0wC8koziO6jbFg/Gav6XGrjYB5c81x3xkDwNObbnWERsfa7dPc8GgZGowQc/nYT/Efr4y/zeJ5IHNNxDfZXUI7GaQC1Jxj8cv5C0zXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779678754; c=relaxed/simple;
	bh=V5L+2b1TMjp9dkjjU/vvKkHe0BKH27mjKityPLFKmT4=;
	h=To:Subject:From:Message-Id:Date; b=VG73BVwWGKSMqFIux1wECkodrLDDnvaZ3xCPxQFb3an3fTFdvBsEyldm9wJLOIu8GgQxaeLxqNjOKezLjH5D7osMdnQpyT3kKcFjSP+RVqsFowr0fs5jHnZoINGMwsv30ZksnbnLLSAvaQXEUy5ybe3Mc10TidPHu+QqyfxOvEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkyU8Y97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkyU8Y97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46BEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779678753;
	bh=V5L+2b1TMjp9dkjjU/vvKkHe0BKH27mjKityPLFKmT4=;
	h=To:Subject:From:Date:From;
	b=fkyU8Y97oFSqOx0zsk3kBr2CIr6A2gI0GZv/QDIncU7BG4XCdgei2+4ZOM8/+wxyp
	 +cDlMsz73WYgFbkagWFKSbWE43RHaeI6TYEjVido3k/WkqQdn4UOVt3cBpFSRYwdsG
	 eSBeN9bpjf0Sx7ywL9NI4UpJKZsP50p6RYjIZxRtCeMziTSaJjwvmA5On6Ro+//T/M
	 7vAuHaEbXpRMWQb6PBk4V4L/ovcbi3EL2xmFo7Ksx9//bmMkg37qMRMQ3zyHr3egXL
	 hTOWzEKrXlfx+vjxgkeFZBqS7Dw06v8jkqc6fqBfSJgxReJvp+rfiLRegXH7s9JrUT
	 +BEjcLSbGjfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F4CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967875367.32264.7287813441350441656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dc09ad7ec6179868144b28111302e46790a38a88cf96b3b2ff58994e4efee8
Date: Mon, 25 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779678753
