Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F3220E0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CC3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673688687;
	bh=zEEqANBTTet+fyGSJhZoM5db5DOSNb9DSnDUDce92WU=;
	h=To:Subject:From:Date:From;
	b=uw1ga4eKuN1wSAsuJMzGktNPrZhuQRsqwZbgckRpDvDGrPgBYWXOD5hyFGXHhAm8R
	 QmIJ4/q2oyX1vP87E3iYIuqwyeKWZ9ioD78qQdDe4ed3detgjQJnzqE1DNUa36MO4H
	 +Ng1CAxyYR7QZeESiXVME6jyaXMX5PvE3YwO3a7Unz+WgtyBYSLJL+33gVPoq5ItGW
	 k1I3UgrUdhb0Rqb8eCSUwhJuW8S9PtZ2AopaYdYN8raRoHZJTo4jdWhKDe6JtmOSwK
	 45VAbnFzArRBWj4HC1bU2IZ/PT7QeP+BnAeGRcl4ngbEksjsGsiZAi5kxtuIyR/WmO
	 H9LmWH3nrpmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63118C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368868739.9979.17400293427139701142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f8a08c1bc47a316bbb7d95364550464fa95334b4447fa583f40347de4991dd
Date: Sat, 14 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673688687
