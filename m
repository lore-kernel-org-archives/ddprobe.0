Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A63A29
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 01:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C398BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 01:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696384568;
	bh=mNnsb0kv0c+g2dZ2UcmE8mGOzVTY3as/OAtw/GHqgik=;
	h=To:Subject:From:Date:From;
	b=reuDuMc1kvk2dEfAamPTsWshvPqyY4f7UjGeVMviAfBPolvngkiEz8LUVhuJcHqrO
	 tP7yNOwknQBuQq18gpn7L4wZOgoEdl4A9szd+Qd7RrQRW5zL5JDJ1Pj/n7ZddGfdWD
	 vwCtR9aQFJHnowKJgNkLYJc1LfE/ACXi4Lj53kPlGW4XkNYAA9sXJmUdjcA2eF/Q17
	 6vrfd9Nv2nuPPl0Bli0vw7nLLknzmOxWIPKn3BwsjEHdi3GdZAXGxieLaNg21f16c8
	 WFXe4z9wCZgFxRKL/hzspPvnEnvbsy+mAR3RhPJSzReLqWKd+o222ymV5/PwivNMlF
	 Y7kSPpaiyCxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C99E8FDC4
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 01:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169638456867.28916.2729655590442700073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f5280f2228665998b528f75b5d95247ddb27d0a7042c484a00cdee3525df61
Date: Wed, 04 Oct 2023 01:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696384568
