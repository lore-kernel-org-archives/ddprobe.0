Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF692F26
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0C7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686595505;
	bh=ioUsuhS4tPuToJkzk9Yqa+wsxq51MmBbWVxUWaa2cGI=;
	h=To:Subject:From:Date:From;
	b=SFSzsn2FAZext+LAvyHfDwnzOa2oDrptemEpZdjyo5fqlahu5RBFfr633sY0Ueepu
	 q6UIjbMj9NKfwNr+iV44FyRCyEzPGM+1kX+5IYXWKZybA9A3uvaZ/emh5fyelQEamv
	 sr/cvQAgbnLDuVFGJxicrEAhgKfcRCiKQpXSSNJMYXiW24iLRvcnBUWoYiRl14aWJW
	 beS1MXTIQoI7+wY63io9ouw6pAyk93sD5pPEV8Tg8LHactPX3kcHNL9FdVOnfkY06A
	 bFa+l7yICBNwbCMJQ4oDN0rym5YW27qCGs88oNKiWkFdbAKDGh7w8rs0QsUWEC4hcj
	 Tc2oLQ96u3aHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF5DC88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659550576.7522.15243588892735775120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8517aab9f14709dc1df545108050b0290124f64085cdd9108ed0a5303a47ab34
Date: Mon, 12 Jun 2023 18:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686595505
