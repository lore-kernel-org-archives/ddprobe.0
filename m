Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597BC8481
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDACCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687855388;
	bh=M5EhExGf7NUvipFfI6K2hzhJ6emM5Ezx1TEtTX2M5ho=;
	h=To:Subject:From:Date:From;
	b=iafc4Tedlutj7+W1tpPKVYNpFEc/QGaP0GLJfZ+oi1FaRUPkgJDk660x9d8PxLGLg
	 e9kPE3I9GhwQTIf0Gs8CWabc+5eIeZAh8w4Wh24SpVR9mj7dhOwBVsM+eBds9fmgq+
	 esin3+7xEyoLWqPiCJXUyN8pGRN6MT4Z24GLH4hM8d9IfZfnTzMUkOtADYnBJmXhv6
	 eHu2F4a2KevnE/o5T1lme0qSXgBeZiXo7HZxxmOx80jU6fvrnmd2526zu5PMhogRAE
	 2wKUgYHSiP8YnMw+o1epxewxM2QPznIz6fldSRoRJt+AM/bGee2aYLn7tPocNCcx9G
	 FmM23aCdO7UJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E6BC001B0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785538873.27151.8361772286631667249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287b0fd78d0d88ca9afd1adea8a5513e65862bc6852e2880cbcd0a9289dd50d3
Date: Tue, 27 Jun 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687855388
