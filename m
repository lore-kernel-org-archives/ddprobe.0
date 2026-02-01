Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020EF28DEE9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769937834; cv=none; b=nihTg/zvwaL1NOuSag0GVekH5jSnl0pzA1tDWc2Evg6r1ckNiIpRiY2HfBychOjDAkBG/CqFFSf3ZsFF8RgEu1yWWYTq8WfDU8ybjfpaaEUYcRrQsfgsB8cQ4wBiq0nqUvkBWredjRxqN1bQN4sFjmSFGu/cC4mPAzSGozeZD88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769937834; c=relaxed/simple;
	bh=fjKYKdr8YW2fKxLWXMk3IzkJsuvBN4KbB+IvEWRgG+Y=;
	h=To:Subject:From:Message-Id:Date; b=IhDBddw+p//bNWx/vfEpyG9ErFtCZ3+zqVKnxUaLkKkduqhwbQElqdC2TSXH3Y0g7dbBv3yd8l+Q5MR7b9nyj72u+01MWkBLwDBVJBmuSv2Qk+nlIh7NQb4XXd3MKBjp+8NcjpN5L0Oab4cqKzQGO2mfwQ4OowLWDEPm+4F6vMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUFNdfBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUFNdfBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F319C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769937833;
	bh=fjKYKdr8YW2fKxLWXMk3IzkJsuvBN4KbB+IvEWRgG+Y=;
	h=To:Subject:From:Date:From;
	b=FUFNdfBy82nKV2UtTsu7qKBa2P/K0ZhrsGfZQPnd4KK6dWDxy+tQ5G89Z8OIs27UV
	 ERAq0TSWK6NaVdhDER/ANezCnfCcHOVEcJrPgc2vNR+XkoL6mPyMz6Zer29x+AV93X
	 gzMizcaV02nrtKR8k2PmFho8CLU4i7v8vpAx0Q0uFKqpNnSSoCrLpEVGOtXlxTqloP
	 TKPf3xV38YV5QSoC4YiBmMdYtISW7TIeN/0ykH5YouNeHYQAcQObKP7dlyaS3M07Km
	 ZV7qj74hhGu0Ts8sK1Do9DJa7D6v95StwR3A1QwUByC/B1dadP9EgKliw64icXiIkV
	 /nLrcbkYe3WhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4CE7C715
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993783357.26502.13050612279972030379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116301111ece31bb322592b22e6aabaa03da61fa45e1cd71b813bd09b6ec6c80
Date: Sun, 01 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769937833
