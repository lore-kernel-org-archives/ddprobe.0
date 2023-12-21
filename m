Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE27B76DD0
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+kkg+ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80379C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703194696;
	bh=n4bh0lYbsn1eHMcvGUg+ETxFbszqzne4o+WDrwQcON4=;
	h=To:Subject:From:Date:From;
	b=r+kkg+psAZbMeHQYJqc6LWInr/Q2V9FHbW9YQ+rQNGXJV0Wo/9BXA6iLTCEhSysg2
	 FwLGm565TPH48ZFWoWS7dUhkMojyk0+rXClqOMY7J5S0j+i24T0GZ+cyhVBhR/1FMU
	 a68Bfq370BYLN94FT2KUXAIDsQ0SiEX4iGYjNV5RmS+hbObYt5H6a0c9aVwamJULw2
	 GxUmXO4vNkTvUPvQmWWHMNLPYIuk9AFqdPyHlTIotDP4z3WT2wMDTHBOQ1zOekce0H
	 ipK/uGZ/nV2qwrv7LaLv/aaT8XJOZvhJiyIzJQ1PPtcnxgWU+DHf3XHZnVKqyr/mch
	 o5ECRaDHVt7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610CBC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170319469639.3153.9826309171033856649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b385e620b5e2965598ac3a1253d0a4fb462d2c9afacc650d68dede9fad4ec59
Date: Thu, 21 Dec 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703194696
