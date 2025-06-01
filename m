Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE3F2030A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748746794; cv=none; b=Lg6OMMcfFSt96Q6FJM0394+HnDDoBR4I8cvSRaV2q8RLV2o8Qc36yIedTsF7fNL3t04I3wDoNNZcwnb8pwj3bci3tet5MqjIj1HdsleDGYqDjwoJwkkn5rU2aAE0HqgCySzhq4aPrL8k78/r29uo8WSFVkCqXzWdaB9zlNHgzgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748746794; c=relaxed/simple;
	bh=GUuy1BH7Ncmd0GvpTF39i+V6ATIqNk2jQCwFZCQbmuo=;
	h=To:Subject:From:Message-Id:Date; b=fpsuvT7R7+q5NSXnXh2DFa/ZPLOaeM9QzespMn7/46Vb82yHiLng8J4f4TsHeBsi90VEI+AF17vvJdP2JZugK3VuH1TjlV7HVy0uotOSTH9xWt3mXEWBRt/3LCXPRriV4572h/ME9UJZoAIuk+5MAlYIkhiIfMMCCwor78mqebc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMFeCeK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMFeCeK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5424C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748746793;
	bh=GUuy1BH7Ncmd0GvpTF39i+V6ATIqNk2jQCwFZCQbmuo=;
	h=To:Subject:From:Date:From;
	b=kMFeCeK1180P+pv+XyrxYE8PZHLtRdMNLbgU1YBr3xsBbjCQRb7+kX8sn+3Ipp85d
	 /Q9tbvyM/y4vlHR4t2bKIbU0OEGgpOLEw3NuzPHXsMLxe6ZA4RcyLMJCBorEFjdMKy
	 i94YC3AajjDoNwPev70uDEj00m1XU19cPBitWgWX3kyejM+FSqwLlDgpDvXfnJl3wP
	 wSqRWfJoGh/ZoX+xPQ+QVxQPTI4Ot2m764ygYmq8veqPIooSWNwCiCDA7jj+dZf+6Q
	 ZQwF5tDEpvwCg9bomE0HTGBEaHD/THuc0D7BKyGNhXSV6byklFEWlsRAoNF2ufctZw
	 wvLF/DIg+/EFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2CC5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874679357.11856.9167555677416881998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676513042f82807a16226caec9226e74c5d3f21822bd25e712eda5a6d90c35fe
Date: Sun, 01 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748746793
