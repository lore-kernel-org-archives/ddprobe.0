Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DA837D
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B68C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685149625;
	bh=E4/YX24+rQqLMr2LToA36b01UJMvPEcy+QdjFVzXlRc=;
	h=To:Subject:From:Date:From;
	b=qbl6Jx5IhO9MM+FL6Wkso4UKTiy+LNZCJ7H5m7yHtxcvaR0jatmuM+HsrqrR7gWOb
	 6L/tXEQ5f/KwtZg559lMm4NEZ7zqLMOLY4ZG+DXr8A2AfEi+H7KtpyeWzE1ItgQOcy
	 jrT6WrjUuDTXyFfjKx3mK6EyT8KJAWmhabaWFDrDcC7d7vJXHhA1P0bqgHsLAzsYDG
	 RK21sc13A+InIC8D7c7DRb/7bahb0CKRdqkRNUsnSkbkP1AWxGUDzU+FWbXNB2uG0a
	 oJW586SFIPy4feQinFkZtOQfJetB+pzl7nF2GAmaN38lEK8ZMNLfyH7a7KPlKpKaZb
	 85kK/QUZqv5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED77C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168514962576.12503.3298012660124479334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92f7025e40601e02b455fd3ebec16e23d7ea3924db90155e0ad43bde90214ea
Date: Sat, 27 May 2023 01:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685149625
