Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E2D3FC2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69750C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172453;
	bh=QI8vo3iUNFEQLjCQ/NYMKuaFbe0o3JDipC0/YS3vaX8=;
	h=To:Subject:From:Date:From;
	b=KVFRcB1sseZMmYkqTU3yWKrO+6RPSiBkH25fpk1iBbNYkXT6czBerBOugRbG+OQmV
	 HTwx3tMEcwyz0/k0uA5SeMVH19ZT9AL9AFTJ+DaiakLxLt8Zo75IX/oeKGjO3eAysv
	 IYJsRfCNCB/t+qRESwtj+K3jjx0nwCfd1dwXuIoyIfnGYWiIkJo8l3a+5givHaSVS5
	 tfVlboO88y40JcESyzoXPbkVRAQP/Tp0gEm1q8+eTCEWKCdASBKwO3c792ujOuJlBK
	 a6AkqMn7TgzPBRm7UFCa+517nMsknWx5uha2Zd6XKg1nIr+bEcodZTVlNHH3yE3i8u
	 zb7Nlg+aERm7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E9DC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317245332.26569.7581253317563245617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e226fde36921d730e8c8fd52e04b6d664dd7d010c3550dde6e8ac9b4cc4644
Date: Wed, 14 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663172453
