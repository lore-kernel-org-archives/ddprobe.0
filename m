Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AE937B9B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C0AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686057125;
	bh=mk/gJ5zmfUnaXed+Vt3lKVbfPpyXKqFgegbnzT6OpLQ=;
	h=To:Subject:From:Date:From;
	b=bvxb1C4L6urdiXHIFJWFGBXvISyDxi+BFhnm/L+/kAomLigcZFRIahuQSj0Dq2hX/
	 ho3upEiwLPh2b2YZoF2hslTU7BGOroj5uC2pnAQtvih1Ho2HxY6SpigRQ6M1CMx8z5
	 XE/fZUaG8BJhELvyEjmrriaKPPmFASt/YpDsmopYuVqqKLTPkzM9xV38UYD3HmpGP9
	 cas5a88+x7ZSgsdDaXsngdtBHJfa2uA/PsA7ag9y/alWrAXHujwNb/tGo1DZPmjpB+
	 Sd208A0Suscig9deSmhY6AItcYvb1fnW5ONMslsAAXNK4tSUenxcbyVECmRjXu0t6K
	 NR4xvA98x9BRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DE3C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605712574.1389.1656811933004425916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea4e5361e4450d3596f3a41136e09dc5dd46c080eb5f4131018bb578740b0ba
Date: Tue, 06 Jun 2023 13:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686057125
