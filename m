Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C819A8BE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CFAC433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667923254;
	bh=aBDjWuunfRYkmiW9+t/y9daj+9g+3YwLqIZL/cZHxWw=;
	h=To:Subject:From:Date:From;
	b=nnLNDji3kSn/qsjOjd6GAZpsTEBTY7Q81T+BRsuMXeCYWCjWxE8QMvm+94K2imBPC
	 jKtJf4nLel0XhdOPEUMyJEHUZgwF3iUkh3yIsKs/gOSuZul+TZdo1nz6FhUHu0j3az
	 PhqMfPLBPsKmVW4LTmQ0bfP2WJ3UC/bCWe+XJsLzI7kyOsJCTlgrsyFLopTIgxftoS
	 aDNTXwJHwjuTkEgHitrEdtF2vEnkyDbMBPkErF/psyDEepvx+2Km6LLEVlAE4HYf4b
	 dB/dA/wM/8SJ/MONUmRLaUN2uzknNfrnk2dZ6G05d0GS3EPzGyIFOnx/6jTGBtt0QG
	 7YkXEe0Htlw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575D2C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792325433.12943.4568167185340567703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3868b67ba70d292eedd80c2bca013dbc0343377470cce46e8cfc66759547d5a
Date: Tue, 08 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667923254
