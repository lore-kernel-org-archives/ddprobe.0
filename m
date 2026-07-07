Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1FB5474E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783412914; cv=none; b=Y4rqqbjSPjLsVtTaa/6nx4r3CgQSCYaFku9Tm292BWHMI0a+t7XZiinhbBEr2Cwnk/s3tGR56SUvC9taU0VPrG24fQZjgZHP6z3VKAP3TBdBuGMdSyP5TpOZ0U/fA1J+MAb2oiMFH6tIr+uBn8eQHswAaA2LTrG84jxBAuv7tAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783412914; c=relaxed/simple;
	bh=/3srPl3wYN1xNOWLbvA7uCst2ZEb/to0nCXwyHsV1l0=;
	h=To:Subject:From:Message-Id:Date; b=Il/AQ7wP3XysWUpv+y2ny/7MWvMix0BnEtVMQKxrjvcN41yZ0uiW4j11sVs58VQP43uaOfXOqQTzuNN2vJJJXkQPvhMxr7Mygg/T+V8p8BWtPs5AtoXVBGBqbPwHwZ386Sp16ujm3VmG2i80oIQRv0AVVu0JrNDDYComx00RkSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8oYowhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8oYowhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC565C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783412913;
	bh=/3srPl3wYN1xNOWLbvA7uCst2ZEb/to0nCXwyHsV1l0=;
	h=To:Subject:From:Date:From;
	b=V8oYowhZ2VTv6N9/0d4drsbTfzUrMevwXls1/LmA6E6JchpMbqu2ixPMPUKyA5BRd
	 lgjHevgGfyNmXpnA8wT1rjye0zv36hP+MxmEOx+zwuc4tFHw17IUzfkxH+i9Wsczkg
	 GzEaSiepu8Jis/ao6XxdURdfc+JWwtXvlONQnpOXL3AtD5lkvE55FqCItsIV8muwT0
	 ckj4DA0Eflqe8iGnxFCuzxlqsJVltoQkCPVLfthE8OzG7V+mnuIQiYR7bMSUbhWT2R
	 gy1ns9EEquwKPIm65LrB6hTOabR/h1f5SVf5CRtlBH7EYr2yt0ycIyI7xm2+t5vw8u
	 a5xGkqEwTK8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A14C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341291368.22180.10112993766657783089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2b0a4f063eece805d482c17ea56a74368166993e1d959b46698d3ae1feda72
Date: Tue, 07 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783412913
