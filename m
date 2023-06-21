Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905A21C769
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA150C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687391588;
	bh=gnKyxpXnJKpN0iSZjrzqXVoEkEKD/cPzOnTjiZaICOM=;
	h=To:Subject:From:Date:From;
	b=Qoo3PQLFO54r8pn+xpsmuPNMNOfJhCAvdySQQUAhDULb/StXxUswiMbjq5QzAQLJ8
	 y4viY8aK6VrGvXKCaNSjlJiEg8kXqat1uUQPeE1WazgVKlAqBPeCHKrvhrdXNq+kBy
	 clfNskfmwC52ldTT5newJHvP+GHseCEzfXFeBq13q/RD3sUu5MXJZZ0Z3IxT5qNLUt
	 Qo0faF5wN5qX4U+k1ZWfE4qymymPYWHOV0+7iMU25vsmh7HBxq2C6tEnRmtCRucM21
	 rdE9SXwBjMviL2oaYnKHwxkxJzrtLA3p+pi2KVVjOirXCxMZ91wtbyFRiHLw/hJlWc
	 wgaaLzfokezBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0DAEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739158869.24685.10532475520517694457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2e8f48a387cab057235b31affb8daf936ce434091d9efd9010b16071791724
Date: Wed, 21 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687391588
