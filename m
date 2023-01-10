Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA824290A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92541C433F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673340687;
	bh=3uMpvT5pNBxBuulVzJXetj9d8/q6OIjKJnPFjxqAv24=;
	h=To:Subject:From:Date:From;
	b=K4NMQkqdR4aa+VGvdziyBYkoJrkneX4x7/Sz5rmK3UteMDFx17nUCyVx+NBFAMMnt
	 +7FYIIcKnCzXumY5l/k0qLAC5vG8LInRp78rgrcvtEjWaA8HQeNMjlQy6v+JePPoDC
	 ggyknNZ07AH0pZzrOr81KIMlRVrJFsPtA+iyOGVj4BkoZBZEE4AB4e0DtfVhsxlbvc
	 SL63Vfe1qBelZ5AcEvSrb8ECasmev96/1/zVDgUFLz6k058biiEa859ZjD/fdk5RKf
	 A8iPWD/4bx5y0KgjbyUM+gXg39zBXltGwEIswk8rw5yWnEqBRkel1pdjZyAaUbApA8
	 jAdpj/GrAmg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F122C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334068744.23740.11667858965945947961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749ea77845bbad6501840f599d11be46aaed3255ddb87f11cd7044693ea13dcb
Date: Tue, 10 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673340687
