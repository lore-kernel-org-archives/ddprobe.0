Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFA77C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E239BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686113525;
	bh=UTqxjkyadWOy5E1r/y5Djujn7of5ch17w/3QIYA9W1k=;
	h=To:Subject:From:Date:From;
	b=oAJiS5M8og2IJBtki3XF5v3AeJqiMM/4L0CbqtdcFSM0gQlG5m+pqykCeu8IzA71v
	 7ETc16gwlMkjvYmsCtRRE1ESCKLjMh44cZcVn3LBs0JX8eooS/SKLdtj2w6b1y5GBZ
	 PPTII3TCYFHpiYwSC5J/RmwzEw3xYiTJkS1q+3I/f+4vWlRrhbXnjwnRR7E260TYHR
	 W74R4kgwfrvnNzqIJhoCCLMhqWJLZ2O8gvUGw2F3RhCvZItl0+QcEpEdWmvMzjIhAQ
	 InHo9JpsFJL1DFuHXGsEJhJz3d+plT5acvZe/6tRxH2mh9aEoyyV+PI0u3T3OAuG9b
	 m2G+VLO4/DVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0965C7EE25
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 04:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168611352578.32721.5259143654574969342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d24bc0e9435f4bf89225fe24f2956e8311acefc82853816f988a95ee2b95d3
Date: Wed, 07 Jun 2023 04:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686113525
