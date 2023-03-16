Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1B6AD32
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0CDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678999205;
	bh=OB9ocmxtDObqFe+OEl6ltFxz6+3S+RrSVcSqxYNfI6w=;
	h=To:Subject:From:Date:From;
	b=M7rF2Z3TSyL6NiasmV4H9u6WYnTkVGKSJsHSPgIn5o1nyVkjua8My6xHMMZDhJwpD
	 2UelFiHI5UyQpwdp7OId+WRdePMDAquFWZdmKx/XAdowoZ2FQ4d/F6BxmgBJa0Gsa6
	 LACkE/BnS3qoZouzAppmh0YwONLMpsP4uj9P0MVkxi7xcUS4CRyczSwk1ZyXLnfSwN
	 KPHlkdrqd9JpeP7s0K6Clyn5iAKCmrhNLXHNQM0Ifo/ByhGoZsmx59xVlFHY6PiVZM
	 K0yoPHOkcwygEPJMLP1QW0Qx4TNTyI91OjB4SE2wKtHPLawy7ytAzP6tbGxLsw1mxy
	 yvl61IljvFXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC573C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167899920576.17724.2602090090001210045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebcc91d798e0cb0cf971cbaa4b4899e0e8442a4d350137ded1f3e61d57377ed
Date: Thu, 16 Mar 2023 20:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678999205
