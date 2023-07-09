Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AFAC12B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70A6C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688933828;
	bh=us7KHJvIUUXKsrFjxdceZ/j/SQXGZfwEJMFMia4I9gc=;
	h=To:Subject:From:Date:From;
	b=BfGQF8vxSUnC8rHq5eKRRdv2QgHLUiLgfJsQ8puGVru0oEhGKie3qGAK2f9mEY5+Y
	 gl0F1euSlUNC2hsDFPoE0SEBgHpAO7vfqHJDJpCXPxrE+R+Y0Bsk0teqjBBhTSBVq0
	 qwW2Dozwr+UNjIUP2okSBpA0JQTCso5jxiGmGXAF2/y/jvmLbAq4kcIqsQ+IGALRXA
	 l1eIxEpu5oeQUKEovRLgIwu1fhawj/F6FrjL7XXXIrZOYiVisFEvk9kJa8oTNuC2ud
	 7oAIfMmumtcXHsQbp6EuozuLeIcrynXEB7jx7AX3PsVkYUMoXlH7n1KCywQylqR5iL
	 HomMGTx9+koxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1819EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893382876.373.2120999903342600099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7482ab7fcbf7b85832ce043ab107b38a5a480d683720ec59ba4dcc527b3dacd
Date: Sun, 09 Jul 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688933828
