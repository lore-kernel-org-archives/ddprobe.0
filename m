Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35875217730
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744828794; cv=none; b=DHG2eTEbomPQw3+ijUPUAupxB5+Td6pqBymM1Vje3HJCoIHiiW7dAJ2zwL/1IBRwOtBhmEA2zIiebMo3+IFBlx3IjvvXf0nnGLNK4WeVStQnbwStDAFYpH50HVWhK0DOkNPc6AXreFwY0Lw6PfeXPrBXc+mSrphcNNDM6IzN75A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744828794; c=relaxed/simple;
	bh=iIjuY1UvM3uqFrLesem7UUgk/hfmKXoYZx4dl07oVRs=;
	h=To:Subject:From:Message-Id:Date; b=p92h68K7NsVz79RoEvS82PiFLcvmDJlmt3TViVfyW9jn/TbCxdieifZfPp9KxMO1rZKyu84JnwHBa8L4z9/9vnYzDfwlwDp/A/VvX+JD3WSv30JrtBLvuUpiUC+zSaXPHjpPbOW3uMAyO7rPRKpAONTjvllUj7Sv/0BuCOoTLs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnIZ5PPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnIZ5PPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744828793;
	bh=iIjuY1UvM3uqFrLesem7UUgk/hfmKXoYZx4dl07oVRs=;
	h=To:Subject:From:Date:From;
	b=MnIZ5PPgJgghRmO9d8gX9o2p+Of/Qwf1eLjNoGpQgkp+TKfdpEwCCILcRCQn+syVy
	 9nNzvfiNoZD8aH6W0kZTa+LcmQ1qbWaqf0xI3j0hEcHFlcV0qTXl2Vk59LvUUhshkm
	 5Tb1xPR0BpRRQUIpSXt2rGWmXFu81CHo0T4LVYhwIUQ2RcammiY29qUQ3+fZ2iehzn
	 vmC6dvFyuPhTdITud0KPk0ITu5QMRsCHxejQ+OMfmjg/DgS0NQKhgLfIN4sALRs6ea
	 AKDSzWDgpC4pNCtl1daPVyMEDtNUQI6plXoW6sJMQtVeEWaxDdIfrCxOv9cbZPilR6
	 sFX+cqgjPCMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97111C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482879361.31320.17946141255933103791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca0cce0498a985c0ed52743f1092667e1c6a1522348cefa34f14dc23581f293
Date: Wed, 16 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744828793
