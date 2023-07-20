Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD2D19BA1
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E31C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689868928;
	bh=jN+w3nl5utDF2lJDmidXbrGGV8Mqj/zIu1rMHEb8u/Y=;
	h=To:Subject:From:Date:From;
	b=C9w7ldjxsimfdQ5ZslhswsrQUAT5Ugf0oD17+jzjMJLn5/tl/rfWUX5QrXOji0yaB
	 h5Wkgp3bTiQQkb85phRyLcXaVV/lwKKibC0zJgjmHAKjP22V/1sypej2lQlv754u2e
	 jwL3uTt4dqGhofuT15FNKf7y744xuWKbBGBWVEL37c2v3rH+D7JIweIkQB0VEBZrxy
	 bUiEazMfe5x0DE1Q5c0DcDXOm3GS1kVzJ3oUmVk5cNCj8RXK7L1Zm1DUkv9Yx1VA91
	 7Cb1hoygyRlP9fFLzGRjmfAud4Spf9npY7DqK5PqN2uEdJTw4j6lhNoiXT13/6YAgK
	 G/oaf+xpKK9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CDDEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168986892874.19326.3653510914403873674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccfc9f8ef6e2f471010d8a2e4db8aa146d74ba0e8bb2bc949db7d96065951d2
Date: Thu, 20 Jul 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689868928
