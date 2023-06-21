Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F8A10E6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D3DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687323188;
	bh=Ak/yw5b9BkJimBYVvlIgsea4W7j4SxXJTr2eDIYo5Xk=;
	h=To:Subject:From:Date:From;
	b=XJhkq9OO6hPtiOspGw+knMsbam1oWB8xx919zIOsUOjeBgq3PwblVfa1TwIUdL98B
	 06CE0ilsfp+Tj/B8xo0NO0dwyt66H2o1FjlBhMhKKTmC1uX4V398RYTPusWxAxicgG
	 HAkF9fR9J3+Fk9xjg1qeetd0vsCHt/BR691MUPnTcvxFq4EsD3EGhTWZ1bkBx+uLjQ
	 InnbNZlkDGKv8z2jPLiyZvltEoBsPWgxQ7LJx4aUj/94SA1yRbVO9Tyxjj5wmxx66f
	 RVvvVW+DraGLkW6j+MYWT9Oo7m6wQFhp1POb/Pt5FNtAnBxjbOpLzeU4PK+QAJp++S
	 EXUafCqTzBCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF27BEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732318870.5981.5596052726611727573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652225acdd808041fd95f9f9491443afdd8a6066b34faf5f10d59b4d04a8e43b
Date: Wed, 21 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687323188
