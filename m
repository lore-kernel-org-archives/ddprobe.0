Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7327D17ADC
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B51C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692228188;
	bh=T3muZi8x+ECBnRuoW88pch5YUgb4v25Ewapic7qW9AA=;
	h=To:Subject:From:Date:From;
	b=StvBbZuhVAudR+1nspg3OoFYjtuPaeRXqjlCCk3OULbjp/FhjXRF8x2VjyHf9lWoE
	 fV+B9sYlrNtdeCAp1BiYObkV41mF9UI6XETt7X55JGx+63eaL/ZKG58zeBcWBUp4vB
	 gqn81P4rB3QaRnif9CpKWbmn+RUVLQ9cMgIcvql/2tdAOeRENOr2Du5+0dt6jTpERT
	 ELQLQlZWmh8h7g9xVwOyOdYrEy+/Fgi6Ix52nxhX3JZbe6GWsimGfXax/I+Z4QBgzX
	 H4Wsy9LTGLfHVXG4vx1mLaa8bmfQEY0zp8QIjBGdsinivr2zep7GMk4PDa6o07+DHR
	 1zrOy5XgSu4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8791C27C53
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222818880.10731.11083941421765495574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ddc3ead6297bf0123ed921684e595e983c0bb38daf74fde53619f63c75cabf
Date: Wed, 16 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692228188
