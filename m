Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6347B13AEA
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 21:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA2BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694121248;
	bh=AQRk5E5OF+7gUvVxUsTRs2UBuPck4VWgHTTKl9Be5iA=;
	h=To:Subject:From:Date:From;
	b=b1RnlQPifBonVhzQXQLLtCZh9+SfYcDdv8dcloLwLtQFDA3OhOgm91o9toPuYEaNC
	 N052KiL5MO7hmn0IGPEfvXPTncFlBH/12ILo7FeuUKpre/E01EWPsmYWZ0SDk6AgYY
	 jkrYC1LPjukxe1FKCouHC5zkq4MGzMzFZfW0jlEaSd4OSEvarISHQ2l8oPcKTxxncQ
	 WDbcxuBtLBv7RL1/ZKehLfmegspavW9pQ8BnjAJEolo0laiOJdySibvNzehE+gFi4K
	 W3P4QDVNgXPCZDGLy8XXDq4XIcoUzOg6OY7sLg3Q4baN1QbtZio7D5hLovOY/dAPQX
	 +ER6KCEKurv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B5EC875D
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169412124871.8752.6876399023104903690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477f08a4271e45347059ca378a3b10000cd4ea18d06d36e45bb1692b39019fce
Date: Thu, 07 Sep 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694121248
