Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E573197A88
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749594594; cv=none; b=QMu/k/TqUDQCd7qNrQ9M1NAQxsCoS5CKh/q30I6+wHTxYdc7y+IFky3EGXn1RokEaBesuI3pFG3F5xnoZ4hm7LTzi0UUAR5/EJ0xvsizWuyEPM8eXkdEbeXx1NTqNzyBv2rmwePqC4WWuD0OoLBIVk+4jjert+4dbNwK1U1QAfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749594594; c=relaxed/simple;
	bh=TrOnyWthvfAWuZhdkWbGX5uL8ZcxwmKUBFAVyL506Yc=;
	h=To:Subject:From:Message-Id:Date; b=sBlrlOp99jer3XVz2aDfmfAUZf30xR8l3CAI9wH6OmIzaPAnTLHeBCxzGmR9wb2VbCn4TQXSHF16U5wsI0IHMibMCWDPwhe/twb8Bx5cWM9m/kZ3Vmwg5bZbNvHB3CvXtLNaU6NLQOGrWhru8J3skyD41e6R2pSLoZIcKp1JO5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eciZfDt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eciZfDt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6472C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749594593;
	bh=TrOnyWthvfAWuZhdkWbGX5uL8ZcxwmKUBFAVyL506Yc=;
	h=To:Subject:From:Date:From;
	b=eciZfDt/dCb33lD+r1gXuVLbVh1BvIWO6jIxK2Se1LnZO4ffty+V4fuLHtWGnml5n
	 VDyl4lx9m7CJO0QwPu3IxfRZdlT8pUixnmqYuTnL04xdIqOAl53yK4ak944L+WnMOO
	 Btz956pFveJp4z3oOuJ5GJgyPJYmSX9z79pUsGq9+hNuUb5vWwiFgOegwIJmpDjMBQ
	 IUSeQyU/XP2CIDVh6KSfOjr+ofvvrSSTWLvJWb4PnWRdpxzTEaTHmeiiKIeIk4ZFbv
	 /HPfQvR/CmSM1TGsNItWqnSQAGnOxtinDwJEFRA5V14FjF41VmtjKzYy7RSW+FVR62
	 2aRpooHJxaAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7EC61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959459358.30852.5729773348912708815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfffab5a67c662541024c1da397d1495a7fe64f0d86a0e08bc6860baf0cfd82c
Date: Tue, 10 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749594593
