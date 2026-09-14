Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED1D2D46A1
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789352434; cv=none; b=RpFnnq0UwaWsU2rnl4uoDu5k3kkPVzvSm+XRU9onuwU9Pz0yxzkIhgbwjKMgvEqg0TsvZTWKeNcsWs9STWN218uFQtrrIFWcpVaRHNDaxJCroOqr8YJu/xFV55bHJaFvSAuJfWQHxsnuZJgSKyzo7CuNCvyw6ACXQGXC/HqDTuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789352434; c=relaxed/simple;
	bh=T/aZIY0p4xkrgot/yP4Smmrcdkl1b0W4DdtVHLE/QUY=;
	h=To:Subject:From:Message-Id:Date; b=pM56k7Jp094Ctu9Ljy//Ja605qA2zhleaR1HAOSMZhzM4bA8oo7Lz0EHSAGYFFVf0jKnRSJz01/3WVMcIiQO8Buyop3cPZOyHm7LP6hfYZidgBZeBVpWvZ0HAsfaOpyGebQYmmrM5AWeI+ZS9Zr52vieJMJI8LKKBeTyFZHSPps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxH7KjwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxH7KjwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6ADC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789352433;
	bh=T/aZIY0p4xkrgot/yP4Smmrcdkl1b0W4DdtVHLE/QUY=;
	h=To:Subject:From:Date:From;
	b=qxH7KjwLHR5RmQHk07YPfUJCXgoEr29QYbMHgb71/fobyEsdzynpyJJgOLXLWrqUJ
	 cJHSR85VeLcaOoqiSLQdzItj9bphZyL2FtmRoVsgY6oLSw8EBdVW0FR1RpEAT9PdGl
	 Wc/QyJxE4m38BG10VF8Gbzxqh22n876ncsl4x4CHJMlqmd5slNkRMmfi8G/HmRHWPg
	 6fi8k7nzlQUjjAB/Oilg9NHzr456fwm0+8c0ivaauXTI93DOhDrUZDdXIUtLR44I3+
	 INqmcW/qZ2OAMz6eMbb4CqO8y5yyeMovFGuSi6TegjoY1nFieHwz0aoS6HbVfkrRqM
	 udjX3lyRqlkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E16C88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935243368.31681.3960675392171375309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653065fceb92d76270867a6f460b045f2f175ff729ab3ec837f961bd9c988848
Date: Mon, 14 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789352433
