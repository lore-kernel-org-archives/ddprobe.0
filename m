Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C003D332C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782454054; cv=none; b=WTW7MqdxsFphiowFUR6bOEJ+sY1627ISnp2wFAJvY6KNHaDnyvY48XGh0SzWP1hJ19q37tbpwHMZ7J8hDMOr61NSEcOqpkZKrlA3QbvZnXtLeRTk9X5Sz1nKabxTzH7nINUTPz9teYvay2OFuD6bNT7u7C7WDsTfPXZ8cN9kWmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782454054; c=relaxed/simple;
	bh=+6Ezz8kH6OPz0LlX2JSvPCB4vU/RR2ATMHH1xpt18HM=;
	h=To:Subject:From:Message-Id:Date; b=U4l102MgaEaVGnk9hVpibeCH7ndjihkjDPjATO44Rg8jfitnHkNgwF73Hw0jWpG1CzLNgL/Yc/6eD+Lj0ViwGWxLWmX1EegH/cSr5/Fp8+94HhXfWoT5oTtS/VDZLKZsxkn4jobf6osbSBKBWLSATE46LA0M/ovAP01SJshXGiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSZcfnK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSZcfnK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2693C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782454053;
	bh=+6Ezz8kH6OPz0LlX2JSvPCB4vU/RR2ATMHH1xpt18HM=;
	h=To:Subject:From:Date:From;
	b=uSZcfnK5q3y+OA3f4STHhg/ZEpFm8HFEpqn2MMlNRb0cZ8QyAOJv7i2Y/6scViPDA
	 bRmb3GV3eBRCeqcSd337iIK4TwvCP7KpXiUA8TLDNRUdbX13nzjh9IhnJilhoZ0QoK
	 U+mCSROBa21kdUuN44yIzkx7Oi8RuGnUjtPt1LR9Qt3LDLSz0bqGw9VnB0ChaUysFp
	 trPHw6bulpvF8G5Om7zKBiOgDm3yHa9I/nPjULGeEiEPkT4S6oxZKYffkOfxq6SQXu
	 N26fffVpcrpjJci8gM9x3hwR0afUabOxjmyRfPjsvpfEnt/XrtHf3DWGXoEK/SPjdh
	 EhNe8c5+Kn0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B726CCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245405370.21379.3386498750863812392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663a3ae9308dd57d970f6e7584c3a8ad1e4912b3d0f7b6ef1fb412fbdee2c9cb
Date: Fri, 26 Jun 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782454053
