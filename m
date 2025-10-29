Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F692DC76B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761734994; cv=none; b=VnunEJDlkY9MTU4chD06rvxly+43yb7ml+icROFx1jsbmYi4V1ggpzBjkGVbAh80e+bBamUWb2IZpsS2ByTcA9bAMX7gbWmOwTo1qZ70U/66lrCrJ2+Bp5Vxqh8tm19p6mZsmg8qTaDwpyHPA6R7MjLFnpl2kyESfyfOtcTWmV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761734994; c=relaxed/simple;
	bh=dZ/yITbJCHzUgE0ryjHlvyC9+7giTWoCLtW7K5yjg4U=;
	h=To:Subject:From:Message-Id:Date; b=e7qVwrPu7L3AFNuTvslZpsBz0n/T/6tvC3bMCjV/4pu5P+aFjG0NqgjfoEg/3uwGo7L6/mSHZ5CPEpRuI81dyyiQFkbY6gejl1OWCEHzzIFEuOqMJMwaCD4eOknKOQBP5ckgaro7OauqnBi3oOzwhmLMj45edSPwrOz2kq1esWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYLYygpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYLYygpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260AC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761734993;
	bh=dZ/yITbJCHzUgE0ryjHlvyC9+7giTWoCLtW7K5yjg4U=;
	h=To:Subject:From:Date:From;
	b=jYLYygpIadckz1+ltRGZRVI1llSE6rjEojR98VVnxRMbr06/i4GgpmGXI+SU+cqKc
	 lksU4KXlX++D0zzP6MNBYmq0M2YDY5wjpEtalQLl7/Y2p4yVuN+I2e5VUA87TBNfCZ
	 qTAOkXajAlYrW4zCF49mgxXh1oEbr8cxYvRNbz4OtH59AsIDtiZPco/iqf6k81a8cu
	 qgsTdnCMvAU2ADl1r7gm1CD6KpTzU6JLI80yxZRm6ITZwIXtOVDFlCD3l1kVYDLb/l
	 /BR4AZMDsEwFhR8oTP6W5FBMCMCvBkcvS2Fk8N2LHHp+mPGSDEYtwp+9mzYuq9lzDZ
	 Q6gQ7525syy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D3CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173499357.32682.14826914431832171398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bbc4627a3a25cc74a3188acc2e17b092929357a98905752264d8252806dfbd
Date: Wed, 29 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761734993
