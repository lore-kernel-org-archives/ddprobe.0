Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B0015485
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu5fwSH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896AFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699810096;
	bh=80lcrM10PbwqiWPia5aPan3tcjZMmnM64uFKozlFdmc=;
	h=To:Subject:From:Date:From;
	b=qu5fwSH1pGMiEsYc95E9mEZRo/XjbJkK4xMoZIWwM2vO9+jaGoJydZAZfH3iqEDYZ
	 MRI5rB4PqshpCEHL3HCtl8o9IY0FnZ+SS2GE1v2kWD4d+PbkjQEXux6BaNEtU7lpLl
	 qUqEb7JhUm3qA+sebec7eAlTL2ePisqppCx8p1GRrWwRb9nk2oTx0skyQj17srgoce
	 xCNqYf672WQe+cl/j1+WOOK/DF9KCuFk0bf2JzdNh2+kCxiNVjUK/E3VDR+gBqP2ld
	 768ZaJTuEXHOt/IvjM4RisuMEjzjRy8i/HIUvkprxuewaAXoDmj3HIPbcnl7yqiJuE
	 CqQuK9km88cNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD88C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169981009641.19624.11488264252935389668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77795becdc137da3645616e01559fe8a501918da17edacf996198b3c7102b158
Date: Sun, 12 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699810096
