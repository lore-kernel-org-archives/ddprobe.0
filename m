Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227923A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 15:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A59C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 15:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676822285;
	bh=oqymi6qCzMsDwpClzg0jYuaDie12EGyOMpv6wclrhzo=;
	h=To:Subject:From:Date:From;
	b=t0MbjzgHkOOEERJob4o00H8R7lclDiOndtL5JwQcw51vWVo1JnwOotWHuhH8w4Il+
	 MZ510OD0HirLwX4amtMVVeEWIPpjJPAI8uDquw7yVWfJK9wq2jk3bclRFtJqhIrfCD
	 xqxo1VvbKfoTWZTCE3tyAGpmXBvcrI1e8RIZMssT6SvFwQVChap6SswG00ckCojdOK
	 sDFLOeNaq7s/735T8yvtSCBYzrd3lo9KACIumGSTYpoWgpRHlUMzB3DLSAIdd9Y6zK
	 mff7jX8qCsvisHZVMNWc3BkA0nelCQ45j7+PIMlOM65pML2VUSoBBQ3KuR79wUbm7s
	 qowt/M2EgzGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE916C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 15:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167682228575.29634.6817220329495617959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e663b7976b81399485df9f09dd69d34f34a3f4d52d5fd2e4b9b98f8cc25c91d2
Date: Sun, 19 Feb 2023 15:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676822285
