Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744BE290D
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21D77C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681825146;
	bh=NoFi8QkQdOBK9UkZ7vXF+sYp/mifEqK+lq09jsqJ4dU=;
	h=To:Subject:From:Date:From;
	b=SBu/jCB8kAUL8kBbczm0qvsvyz8TjqPcFfqhwjX7cVdy1InQZa/a0XsWCITl6bIXw
	 02+rbYDBb4g+rPWyKl3//V4ZfOp039B188k/vxJ0qVzJD6l6wLeHDewoFatr9Dka6E
	 bWRMxWour6yGhXta8oLODGTiH6PMzr8sXDEVqcM1mnwSHyRdymuG0nI4mZOyLOBAqk
	 ldm7ZaUbqXSnOArGf56IgXFTqhs/5DutNJc5mGOMOaY8o5GD72EvIMlqEo74pn2tkm
	 im92qhJQIHa2fVaI5q6fEp0E6zDS3DQ4lNw/LiPSqPTnfPqENTGnkiQ7v0aoKW1nn0
	 Q/Loe70JS7kKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E54ADC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 13:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168182514592.28283.4460359219249779689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b02a09aafea0d9a44fe0873d71e07c561e8894fc5505e726335d02dfee34cc8
Date: Tue, 18 Apr 2023 13:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681825145
