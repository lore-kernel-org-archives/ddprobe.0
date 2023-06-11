Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BDA2C9D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15227C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686516786;
	bh=HlBnJz4aBj4AvmLFB7YkhAIXAEHW+RAGREx2n6L4DMs=;
	h=To:Subject:From:Date:From;
	b=akgn8u7pD1eYah3UgOI4YUDR7Dzp1O8ZJ8biFw28kFvsrkp+VpCWXxlXiiDQXhjj5
	 gH4J2d2U0d32TLoEBcDmUxpVeRZbyxn+I07V04cp/37OvETQ8QVpb+fnXr4wnOfpU6
	 e6MeQejPPZszjr+Zy0RVPEhSgHPaL/DnwajzI95DJFqliNz/HoMNtJ0ONW2AsMDg9n
	 cl9U1xWiWeWdml31TTHi5O+obx7rEfUMrR3CZpABPsAy8GzOIhYoLqQaFi3ZEBNmSt
	 DVJJvPCR15jWGXef2VNshJx0Q+b+maARXz8yn9T1z2xiZm4L2FCakDk3WrETQKPypb
	 EW6zb+rCMtzBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E24C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651678579.30514.1184216150981588873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0b0256cbfa7496d5c1edfb0eb9108c7c12830b7c4b7abafe44ac42b790d230
Date: Sun, 11 Jun 2023 20:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686516785
