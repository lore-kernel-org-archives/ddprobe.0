Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4AE7E1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68EF0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661932853;
	bh=16+X0O9CzBT13zdspYDLEODDq4FB0mV4HZkvy+eK/E4=;
	h=To:Subject:From:Date:From;
	b=bHeZVsLy/Lig/K+9Df7OgCmDPTvcefdkM18jxp/UXMR+8/vjf/X/VcLeHu69a4pi9
	 JUhxVMCEtFHZ68jTIiIRiBNsofvF5eF314TZri97QtiRm+Mvms1PUsmv2wYVWIJdtm
	 t2qc0fO5rJPPo6rIOGR74xvSct91seT4Tw503Te1mt/bFndNscnKDXBuwccufnebPl
	 MNCvJxwgVwhtnKJOlVlWraQ1kD6fgKUbjMeE9HgvQpTuuCtGYqqWlRYXDVxSjfN+/l
	 yXwraAAPKeKXYKJftHITk9n6pKWPwRFi5tKnP50TxbvVFjtO9oSd0wYjPoIaPcwoIy
	 fBDB+nno8j+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE06ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193285331.3511.4196845499346009655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f2ceb3bd822dcf232a15875cc1299e423f75a143a0d046b0ef2fe0449199e4
Date: Wed, 31 Aug 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661932853
