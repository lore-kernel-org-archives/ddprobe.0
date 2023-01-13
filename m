Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1793659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87430C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673594487;
	bh=wTqchn9Er0FfODv6E664eEQjA6yTSpJXWu+a/x5d6ss=;
	h=To:Subject:From:Date:From;
	b=EJdFMCMPGs+mapPNW/YI15jRwHWqelS91shAZ94VXuoJ2Xlkbe9C+ALyDaIN5eGcH
	 lyHJ8HHu+k4DvMWI+95sHPE4qcX0pbuCdqkDtFCFfKYFLQeo0RRH69MXKGLt98dty8
	 j3yd3BRrdiHEgPrjna8vhtDDqqZ1/l8KbUDlZgINV0QvDws0sLEKtRkXJqLide5LdN
	 B7x3iIHQ/1uCp7R3M+BVeefZsFLfGDuBBxOrcbXDfVuyLlL37iDl5eJxoLbyKIQN5g
	 DyMenj+4w3jFzOcYCTTqrbHElZ82yj1olg/Zh/LdaG7Bl8sqAdetCsRjZnP69o8dnZ
	 d3F1XzjDx8NZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661D1C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359448740.21866.3100689617497446542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2c3d2dbb8ae2da5af8c7d4d8f0e75d133dc0aa00c1ed5121e0a437a81cf0df
Date: Fri, 13 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673594487
