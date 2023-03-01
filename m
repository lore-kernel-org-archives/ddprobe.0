Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1CA2F32
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6475C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677677765;
	bh=6kgk5jEXAS5m5b6IqeqAxxVgwVKCIS2oA4UQcm38Jrg=;
	h=To:Subject:From:Date:From;
	b=eiBvahbj6wv5nV3VSMpWw6Y5WHL4z8IDYpGYims4PAZzsjxSH82ffdi8N4BXTZGZ0
	 IhpeTBBuRIz0PpqgVvKFeevVjDVkx8qpfrmI8GNmjnrvz3mWJP283juQ+TVEQV+Zg6
	 M+INNDnk6olG8IYK594Y/hjx/i9I5huZ6bJVKbEtiUQNipb8Xe6w5YpJV2adoyRYnX
	 lNQhjVLiVGzRhvWRda6Sqb8zCfVUeeQRJ1D2Bp/dWd78q3IRh7YWxs4rvC4IhjbuzM
	 YDbIIF4Eb5B46KqJSAShn0jA+9bUVhxS1M7Q+MCFXtzH0csz7OMLD4pIIrVuEgNMM8
	 E8cqR4CaXT38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0FBC64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167767776576.12836.3654447494441667347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24873dd354d166d045a1c764b3f143bf184311ce059cafa08f778223a0dba74
Date: Wed, 01 Mar 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677677765
