Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CBF44BC9F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777386454; cv=none; b=HtDWrslDnUg4d1Ze/awjEK0cBjdMqpfOfyAfNCkKLv/OF8/Y7BI+6NMa+R1xboBsTllMjKSugt/qEP3K7fYsTHUDIL8+gSqIx9/L8PEpMqSHTaWW4OiKFNLhAxlWESqsZoCgjjBfDWEcpQYSGEyR9/5oMoo64NRyw7fLLm6AkeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777386454; c=relaxed/simple;
	bh=YjqRyC/Sf1VNP6WBRdM/Veyl/2AxVFawtfmEJWpsU/c=;
	h=To:Subject:From:Message-Id:Date; b=BhqNlX5IwhyySDkI/s1LslTXUSdos+QawKs3C3TWeQiHP2bwCyn4W2SIl1qtO2w5ORMK7k49j/0i2u+8o0/lruHdJQHoo0Exm5PSR61QkziAOz5auHGJBrb7sPRPf4ftYM9nGyAnqaq91efjK/9TAqphYkEpZNTE9+LZG2W2Y/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTWN8kAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTWN8kAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DF3C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777386453;
	bh=YjqRyC/Sf1VNP6WBRdM/Veyl/2AxVFawtfmEJWpsU/c=;
	h=To:Subject:From:Date:From;
	b=hTWN8kATr1B1TzAT+vMRXTI9Xg4kp0CB7hpYGMtvDmjDW5NsigVLFdKB+0ebHb072
	 4k4ceLzgcQq+FwCTrS2YzMDeqmm+yExEl2jbQTshCXYAz9u8bkkTgKyYKXE866x96L
	 Q9L4Be6dRALtT2rI6C8kCEPGlezb7KpU29k90hTO2gobRJbdLzvfeC+WT7qjBeQCup
	 HBsMboM//jFy04Xu3k3VkniMQ+WfUa3t+Uo/a602M/nz+FIIz5WeYyRHkxyQ0SgjaW
	 U9Hmfjj7cT0V2yaAEbN3hYWOTVLlk1voCduhcEVdyXsmGt9pYgGC3m7de5Yvigt9Dv
	 wAXUdJtixay9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9839FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738645368.25075.8135195028898789737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f1e573e171e09bba583b2451375907384038b5d6aaf1a6a187057e5723b130
Date: Tue, 28 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777386453
