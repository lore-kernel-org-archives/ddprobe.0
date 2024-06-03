Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F42B65C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717425923; cv=none; b=HU2BUwSXAIvEENuP+E+EVLCvuiqQTzctdvZvGS+UDjh5hknPbDWQMB/1k8UusSISFCbX6NMU/jtUwbdHxD/UHZOk5f8TIuHZ3QC4LVqN82Snx59qQtN2p/Alf3KBAZiR0gVRTm3610tNQQLWg1rlZdS9sCFq+h4EH4B8mUXR22U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717425923; c=relaxed/simple;
	bh=+u6Efx32tSIWUIsHsb2R5Di0quWfqOBvMcRKcSz1lrE=;
	h=To:Subject:From:Message-Id:Date; b=PuugIlyp4qqaZSUoWLG5YiO8/KwRfZ0T/Ta+g3INYmS3mHTqjWv+MIfEORM+oq+ETQgsZn1rM/r1Z1UbUu/mwsaBcb8bptRSu5beQ5jSXP17HIUnftV2uNbbw4tbk3P9hU2Myr1PY6ijN0rlNMdGxyJqXpjvHOjROccmS+4Qha8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKn2YOdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKn2YOdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A0CC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717425922;
	bh=+u6Efx32tSIWUIsHsb2R5Di0quWfqOBvMcRKcSz1lrE=;
	h=To:Subject:From:Date:From;
	b=GKn2YOdLkELVYRjmlHNz2EkuYtOdke3+cr07ommAPg9KVShA9ZoJMLgm8KkT7Smc7
	 J58ell+Xyz9JI5uewnfuh0L7qjITJyRFF5os8fT+yRTi/cppATT213W06JW3cA7eH1
	 AwW6LtUrubbYAgkdKKpXSMYkw0z7n593f+WqngOC3qydFQsGyGkZwdto9mF66mtLiR
	 zabuXCRsiAIXIzkLf7bPvklPHPp3EJG/7zNI4eM4RGUx0V+W0o1ddDv8V1CTBdR1BO
	 rH/fnmJAxoM7VkTxF+M1/EfyKagJi96I/Ci1/sAwEAEuGWV+HfFXByK24AkL6mR24c
	 y5GWEX/8EsmaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4B8C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742592277.24148.13597299069673316816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23eb53f5d177d2d4be1f78665f8121df7d8c341f1dfc39c9fe2631c9aa13f206
Date: Mon, 03 Jun 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717425922
