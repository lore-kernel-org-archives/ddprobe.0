Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AD0AD2E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28EEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692090188;
	bh=2vpvtiTKZq4hBY8ZsxjNgqivEjV3z02h/oA2Sw9X7Ss=;
	h=To:Subject:From:Date:From;
	b=QpVHzbfPlIqG+X0KQZFmiUwTpmGVuix3Jke6r8LDgvg8UHvqdTTPstK3uSuKN7MIo
	 xj0REohWjUv7zIY+cKO+PPLXFaaVfVQ7Ou20DvkCHFoquV4J6j5SiVZQ6OmgEbnppU
	 vGlAraOCX/k/8O14WTikGlxqroAo2A9GWgJM7/dJPUj2EelyBJnTIZ6SWGwYtqKXxA
	 owTfImo1bfPAIVz0FLPNUPzv6FJJVXQFeBkHYHFOwGFyIAmpVVUUklCvcym5U2vLoV
	 Keh1pGAdcngQEIyZbNwNfH4dfFEld+uHI4QIu1jEoUabjFVyoopcNI9Vl0rTudVJ+L
	 /F7VTViTl/iLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A692EC0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169209018867.11602.3643260790002504226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cfdd8d3090136771e92ec3a69fa40d7f4f77fa2d0de69df47561cd5190c2b5
Date: Tue, 15 Aug 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692090188
