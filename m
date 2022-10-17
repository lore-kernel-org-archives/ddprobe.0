Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B348DED4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700ECC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665986453;
	bh=lhtqRMQcJoBvQpaVtNhBbhU76Ok77d6Rjr8e9i06Acw=;
	h=To:Subject:From:Date:From;
	b=A6KadygfqeC6fXNNQDc5zyHLuaEln5V1zudvYlE/ZZ7PLmzrp7qM/pwK+gkI1ee8+
	 7tZLse9QY1DacQTeWFF67VxMbI8VkE7X1kZQ90CwDBmHRL2QfbOkH60n451JgNRPEt
	 mBxbW0QptFfNvqC1nG1PTK0yQ2dVTZoeDJ5CfX09/K+veKnqrUp78wXY/g8kJt6iEn
	 p5jL24c/hcE2pJZVKjmRENre0320tgLErcVtl5mtYS5s4wmt2dSszT0Me73cuXoWFp
	 BHO0XH/ramQY6sRAUJQNmhfRNAkGZtCNwnaPKZ+enk0BmTsX+/mjrpu9e6bGViEnNg
	 JhitFBjmOCejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5288AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598645333.1930.8554432698120678970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65a79a74b26339665c6718b0f151243aaa78477ad882673e25dedb2117f0261
Date: Mon, 17 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665986453
