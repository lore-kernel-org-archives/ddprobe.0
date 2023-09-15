Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E51E19BBD
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 19:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49D5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 19:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694806508;
	bh=2kjAH+aH71OSXg4SxhSGlgBU2/aVo6VYgsSvrTtn94M=;
	h=To:Subject:From:Date:From;
	b=oXsydeqkF9FEtadFHaRb/dxXlAXxiFMeHDHi+22pNpU6ij+TSeu+2H9EuXT0qG7c1
	 Qcu2RmlqjMZVFYyawUftSI38qiBYyqqVckkCNJMhZEATOYSY64uBdSmF5s0cSDCASx
	 fUuOIAzP0qA9ABiCfXq+q1KpfajZg6ipz8N+15PKzFx1ojbnaTDia5HxQbkd94H/0g
	 yg+iWaGLnonVcmjh0AUQwDlDWa9+Rje+dvsHm71oQBD62Xfw6ZClohOrOYVsGihbdD
	 hJ10W+giFMS6i6sK+2KyfTC8Afi/11hZjZtxP5ySzpvynyd+7YQUZF+mkKVZzDnpWt
	 ZvfW0ccWqYxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99AACD379F
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 19:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169480650868.447.6293385530519567725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8214ce463270b9f5dfa785ff104d60e95720f23dac28ed091190e387cc199a
Date: Fri, 15 Sep 2023 19:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694806508
