Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72037F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A0AC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672891887;
	bh=OvZyu8/ZLZFii0zmEraN5IdaQ1et+memDC9ZZlnR8Nc=;
	h=To:Subject:From:Date:From;
	b=ahJyWtg0rB1U3yNVSYnnIfW8UnxeGlkTBDaVGhYWHmJ41pL0TWomO3lp5HCher/x3
	 eUtZri2Ju9TW8VpNBoNiMit3hgyM5DyHJrtg4gc2dlCuxE7GwAZ/JgHvZAv5Q8EDqp
	 cz5DHOsfEBx+0cCDlxg7PSj9stXP4qEfC1MaTJ/S2kTaFLIa75I6uFSKrbLOfv7SmC
	 rAIsQP1LzeQ/pbCe4vVOm0SdS+3jPvoE7fMppEWE9kqDRdpFi8qQ4l6ARMPIrjWDtg
	 p23A0whlXEyFnxKRaIdzNGijm729wOZB4YIA9Zhsxp/rwhMRYYMsSrAP8kA2KqRvqB
	 jEHKO9c66vxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F7CC77B61
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289188741.6538.8580271247358717440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc401fa3b9b9d2cca3e9dd02de44352e41dd6ffa6d650b0b07cbf568d507b2de
Date: Thu, 05 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672891887
