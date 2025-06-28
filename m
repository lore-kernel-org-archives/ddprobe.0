Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1708621019C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751123994; cv=none; b=VXmvbEwqvbIFukfUVabUghVZ2XtzqOEq8Ji/7AnXF3O23GCeUKpNeHfoSdTxIDoLfS38yndVk6Hr3owTsisDw6gSK3EH8FUzU1teN3W8daXZhFYoby5BEAYKfPCxdzIiCBBsJNuSPYceFJqrwrR+nQJPAzWrtYsqOWhn19/LzWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751123994; c=relaxed/simple;
	bh=9dBXoyv5TCbxlb8ZcqKjBe+Ws0j9ooKGlZoQKVEBv/4=;
	h=To:Subject:From:Message-Id:Date; b=ef1mfMFcYO0fA3xPqCr4xle5BccF7ZfykcJ6l5QwKHqu3R3m5l0QAF6+SuwS+GwhMdeIGF2yCVIfHpnwvFmiyuqlrYKdmjMZKqnZ8NtjJwIKVuAVJqHtMg2tyrCqXPfEt/ShO66frzpQ7DJtIi3O3L3ISILwZU9RgAtFcaLhtVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4Z5oKLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4Z5oKLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A3C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751123993;
	bh=9dBXoyv5TCbxlb8ZcqKjBe+Ws0j9ooKGlZoQKVEBv/4=;
	h=To:Subject:From:Date:From;
	b=M4Z5oKLAZSe0M2hjmtVUngS/UyPVPxDPFyJnuihzfrcABKkcTkqAVpADqm4ueKIB5
	 DoWKv4QGjXOBnf6twifxoEA//sfNCQ5f99qeV/R7lViM1EhgCVKJwQLzNJ8HfvygCQ
	 btgxF97GWxU96XkFNzojuR94QxCTekkk+JR1nNnD4vlkYcwxhDwPp1tIT1nlA1ylRF
	 ww8qvD9zlP69swAiXto96mJPTz+gogGMdwAiga4RhsD08ftJSCz9v21r4rtOIH+yZV
	 da8TOeFigtYkUemLIZoMvzmV1KHx1n4ZC0xLLY2O+PRjLmR6FObFtQqzJUHNSLb36T
	 zrBUK4f0UnHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93083C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112399359.24959.14166686863537848736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20847fb5787b4898b9dd0f055f4d068984b54218ecdcf803a14032f611129469
Date: Sat, 28 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751123993
