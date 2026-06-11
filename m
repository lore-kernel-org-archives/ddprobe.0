Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAE1426EBB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781204194; cv=none; b=Kh0NsIUR8n/+SUXXHfuWT7FjPiW85XSHK1zr8XbDZm61tq2UZrxb+r24T1xm34Rm2612tgDYO+kmieep9vHq/FFbdgusifcZGx4a4meQYFB6fP+ioQM97rhEdnwduwz+PX8dRpcFbRX6PNYLnwVAiH6lBCpGPL9pF03wI4VBAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781204194; c=relaxed/simple;
	bh=3ScG1y4W8xm3G0i8vx/1iFrF3JcFH+WeNhVSBZht8AE=;
	h=To:Subject:From:Message-Id:Date; b=TUwSojdAlQTfycHdu1n40Hg3lpJKHoUJVBVYz2DczHjGn0hEd586XjohGQpatc+CL3gAUb1cgyFXcXTc9UL7d6yCJxmGB+T2sQsO7HwaDJHr7DqeUk3jrvUKvbyoShjVqBTQ2fKjeryY5NE1q0BMOO5HyeNw77FCeycOrhgn4Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeJ+9Bij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeJ+9Bij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F114C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781204194;
	bh=3ScG1y4W8xm3G0i8vx/1iFrF3JcFH+WeNhVSBZht8AE=;
	h=To:Subject:From:Date:From;
	b=ZeJ+9Bijmg/KJ1YX/EfE6vIbDjjX/3cS6bBrQc7Z0rW2y6gXcENkDg9wS86nneNDo
	 4lUYwQhQhrq8sDkxryfc52bakCjk1utsejRlllCgcIdvdtJy+4BbkrWm9qa0fzrJOQ
	 3z2ULfaPBdbRCnGMVtcfyMaTYKIcX6h207Lzlu9d4XsB5vmBxqkbXDyLCwWO5YVvxJ
	 p7cnmWl3atOkJ40xDfjE6Xe8R0vStpYKigDGpBgkz8C0IICvAcYKLItz8/x6EBlaMc
	 7M/DBdq/Xkg7QZGzQNuMTmAsgMwryl0sylaUwR/W5/saWDx8rZsbQxrYDYNwZ4fWcu
	 RVMC+40+96OMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E9DCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120419384.27586.18413666965562073535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8d455598661b66ae1d27f5a4b53a8124f66a90ffbc8e6fa8d7047d538f49a1
Date: Thu, 11 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781204193
