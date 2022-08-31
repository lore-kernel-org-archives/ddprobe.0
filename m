Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F662F5D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE54C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661959253;
	bh=LpvkplpH8mEMBBOo9cqCEsnaSe1s35mZsyc9gMxdTNg=;
	h=To:Subject:From:Date:From;
	b=MnaRB/jU4GQQWkolQrP5/BLJVbzDWomspMXWqZoiafeiyDT0oMt6N9LkQT1/ylcTo
	 v04zFGwuPeicrWP6VOJaDnAO8qI02yMGrOuCF7MM2uIRTSK959gS3TwWF+PbCKXaev
	 DxLVi5+HpW3XG4eGitJh0mA4rXdxZayuEhG2Gnce2bctLZ3OgPxwq6n9gV0iwbwfH+
	 Jiuk6aqBDEdZhn1HJ3P7mwiPokk8j1c0K55ZlRVej73YQeAU4kSHenBvCBZabPOpos
	 0l7eI1xbNCObkWJ3usv9Fqr+Ep/BRV3XqTzFb7+ChxrCwxHDQ3tCLUR3fTidnq0tRM
	 0ZOkGYNKnkQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56248ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195925334.8266.3257660592629998220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd258f1bb3e12d64169d9611c6e87957e56297dfaf69eb8d9397ab00d39270d2
Date: Wed, 31 Aug 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661959253
