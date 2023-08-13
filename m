Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EDB2C9D
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 13:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0641C433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691933588;
	bh=7amWwE8TDI+MKZ7R/zW8LX3CBdKIg0NOU31SMHP1SWM=;
	h=To:Subject:From:Date:From;
	b=k4lmhcNaBVHUg9I/ULzqTbCY+EfrStGuX/owhpyYAUz7/S1eHOvtYAG/dZ95efxQZ
	 In+6JLg6Ln+2XHHrFvycR6Ini8KzoQaW4sAu1Js1P7tv8hyB0R0cu9Ydyan4TxikgZ
	 FjoGCR3V1EELdS1JQ9gPABaMAHFH1XWDh/AAb3RAgSl/4MaN9VaDk7RLEUjpce+2JX
	 TEDMwNT1nuftIYWqRPbiju4SkFG21Sr3sGN6JTaJSNjw6JJJwQpFefHcz9aCAmDHEz
	 DHMF1RKqc0PqLmsefBT7g4lkUVrwiTn+EB7GYHqUvB8Gl2PaIkEs2eqYdwh8Gf3xEk
	 xdPMNDsvVoyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59B2C001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169193358867.8004.12919386518350304510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94cfbd12ecbc3629468971173c4b46a242491c2b14f365c342d898917ce1fa3
Date: Sun, 13 Aug 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691933588
