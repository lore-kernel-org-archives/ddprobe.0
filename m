Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6310163
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88566C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674000687;
	bh=N2AC8xxboBTcrTELZnOaXYUiIeA6VfdakFxIZv0R7QE=;
	h=To:Subject:From:Date:From;
	b=sxm40LRmIaSC12Lh/BYSQtLRAU4eEHvGhTzyi2AqG38Msr3ca/VXVlYHOX3CnBgWM
	 QGVbGMN+Zr5lSFKVVdFmesaf3xD1csS+DLsLub7sS3/diQvNuLngair3tHHMuQ5tyv
	 an9Rt8qYG6MvuM9FlQ2QnTrCcPtRCAzBdlHCpGfUOXID29eK1WjtykwNTAiVwHPhy3
	 yns2mnSPJqEs1u3pjYpHfDAr5LjJnVrui/hGUDG8AN3kG4g9olzZ0OrVoCrN3aS7mi
	 Md1SPi4QMuXTxBFucJO3zGkucIhYn7VuRAU7SUmEB5V/Im+oyv7W40i5frk0WBfnmb
	 EIddPAoj/BvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693F1C00A5A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400068742.8555.17768829159864086731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad72ba46da814ed38418bf3395775b293e79143ccd047320d71355bcac02f2fa
Date: Wed, 18 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674000687
