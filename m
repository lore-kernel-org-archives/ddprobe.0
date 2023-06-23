Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D3A100A6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C26C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687537388;
	bh=97JfNmCOQYxHE6PSXEjO/EZH6CqLjY8dzxI6p57Jv/E=;
	h=To:Subject:From:Date:From;
	b=jQURej7GqhzfbNsC17SJ06n1Qxz/JIwDzB8+pOZyeey+EGE+r6uAmBU+byysfTerz
	 7WVwb139ihtDMHDX5fkUfq46yrFBt/+Xfot1F+PwpPRqXrXaid0gA0H0aWZKSBz/7l
	 Q/bgMrXaj3NlEGQLAXqeoa2RYbPscw5x6Ka71W7+/qnRFOBi1FYrFImMrLh94lxLhe
	 OVhRg9M9vw/bYC1EWS2nOYNMGAg2dUdR0PLe3EZ+OGF3oUDp2yydGWiilqDgJdZcuB
	 DNceXuuNE0OxewSsYUoxw5ut1hzCqt+D4KlZSlqTY0+Teb3btx0BscTO/6VQI6xuJC
	 B4X0DhfJNSglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BC8EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 16:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753738866.21260.328400450365066417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d150e1fb9b4ac248d300cfc898fd402e4d46810a886ccea6fab72a878e1f2c3
Date: Fri, 23 Jun 2023 16:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687537388
