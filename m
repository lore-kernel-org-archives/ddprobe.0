Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB23201
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0858C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675295165;
	bh=3d86G0BVBT26nTJ7YmWgbZlwFFEoCY+1wRTrPlWfFLQ=;
	h=To:Subject:From:Date:From;
	b=BfW6DD/jSnupXeHhfwpQMyOlVdMN3Nd6s4N03rqYoPGOge/YtTR062Y5jul6ZorGs
	 xQerhShemyNJMXKSelxXEFybIt9rmxLiCvLMpYp87LNIuurEgcEOY8orQhT6aNiRBI
	 +fs1q7XBly+hRFz/qo2JSp5lVl5RHgbzuqDj+NQFksmqkoAN6nnxvCDki6hA92PTZ0
	 M4dekLUv65iGx7COY04TkNOEaxc0WiYhQR3GuefwT/XaNYki+VF2PC0BDkuN5zJfwc
	 9/N0jd5dc39s+0C8Gg3I6ttQcycmxolPUmLe6XLM50uOoxfkjF3rco7IznnwtQrckr
	 2rZeu7rzePkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA30C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167529516576.18902.17099697020507045837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d01dd6bff4036f4d43da3d54c91f714738efb29b553b0663bd749ede762e79
Date: Wed, 01 Feb 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675295165
