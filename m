Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE273139E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D27C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673152287;
	bh=VVCg9rhw9rkglNUpwtVB/G5hVZzEjm1vkI4npfuC+PY=;
	h=To:Subject:From:Date:From;
	b=jB5BIBV591i3+81DOyLUnXmENBH9yTYsUFh5c20O3gKSqovJEi6qW0uKEYDge7kRv
	 r8te/q7bS6U1lrmE6LKgOvMyAaY6Ej3fbG83NGCkTAtOleJujZZJJT32WQU30/grwz
	 V2kF3NJIzBp5NcUQtNXv/tnCrRIHfdLB6v11w8JkMYLrh87vhM0gIughkkYvIj3SGa
	 g/Mbs1yMQLOBgfWGTR7dLW56LiyaDy5sS6q63eQ/KSW/eMx6oTcR77bn29JRrUj5hg
	 y+jvVz1W+bWeEnRXNO1mjkd258Tsqi2SV+Xx531RWq/JPO0AGc1GzOOAXiQPHk/Qur
	 PpNJJ10/7pxRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6686CC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315228741.30309.13742252988019765226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf369cf519418b5f256eacf7e1044a90f06e2935994025e02663faba4f55ad81
Date: Sun, 08 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673152287
