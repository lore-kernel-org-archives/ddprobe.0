Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD32320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782B8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663070453;
	bh=s0hiDR4HdrU7mheX1fK0/JGPR+tOlEkxF9iSgBKPIpk=;
	h=To:Subject:From:Date:From;
	b=vAMOytl1n40Jw6Vl+RE7vrL3Vyr8FchemdpKSigXb2YZZssfpnhkaiIMreApYOuw1
	 RiF1LnWvg8k2dmGlMxo4dXROdWk5ZSY20EaNMSQkkFaiCimGLMGL+HDkVCrFBlHky9
	 Bnipw1BVqf9rExCsnwRGzgW/rAXHz2MmE+E6fjfp89Y6X224CPcYKPW1I+ZZfATSia
	 VL6uo4WHnQpENInGDpAOVAeFBwOO64HI1ZHqRQi0FZafDoZTdGnK0fqPMjxIaS+Gb5
	 spapsXr7aOFymCGjLKOfL7Y8ZRDLfwy0+v5QWqBYkyNrF13zMX5yak6QyZ2JO1mJIq
	 5me6JLlHYYIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58044C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307045334.16582.5287953201386333103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf632929d4021af33c45c12631dac666123a0c6441964747d467b51e10fcd55
Date: Tue, 13 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663070453
