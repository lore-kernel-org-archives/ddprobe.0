Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6657E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F219C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673686287;
	bh=2JqIk8HJrrcqABki0UUWt1tjhxKWeZx3Pl4dBp9wImY=;
	h=To:Subject:From:Date:From;
	b=aBC4YSpBcy6F300X4gnbheQI6rAQk3fMAJiK2nRtfwQmDq94fxQ+wiZaBaLU2wPVZ
	 lIlBSY7gIjGqiGo3hznFP19DeypzFrG7m62bMG04rLz2PXm1UssGCuT9R2Abh9ZpNr
	 uEQ0hUKH5CGlaVccTUr0pHJ3Ir5zdNtQUq9wGS69I9WGSLAk8z/UQp8fjr4p/6wQCP
	 yQ42cQUpqLhMt605yqAe3IQdplI5YIje6eIuNo3YDDGJ0M3HzoTqUfGNRmMvuPxO8J
	 /R3ZVVLR9jbDyDUVtAbg3IvLU2y9EZCldce+Z7M0kvpkgnGwIxK8eVUNWi6QdAHJS/
	 x0tSn8cZky+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E782C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368628737.6506.8845216188721693325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1baa28f89bcd30f4761d114b982cf0b71afffe5db76bd5bb5ce27f570ecd4a2
Date: Sat, 14 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673686287
