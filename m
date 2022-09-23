Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB2715AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF8AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663917053;
	bh=zWH0towuF66Imh8OAD//sHdLKHaUd1Kxwh3GH0a04Jw=;
	h=To:Subject:From:Date:From;
	b=GmgxH536axiSnvgBu7WVYcuLrBiMbRVzVCf7O2M1HJRcOaUnDisnd7cT9rhGd2Rjp
	 I+1cym2sBk1yPX4Z7cMPxPp4kGdxuq2bc24bRUEJ4qE1ZD3x2u2CrxUjmSV31fSvn0
	 l3ROtCM3MPdIH03rfZBquknpu02qIvzJLUyCbNk2FACQwr68UsZhMflboVU+Hpp5gU
	 tuELVBfRv7kgwjAyT5Qxy2AchUAQt+J+A1xIzempjzyXuCaDx70jVVcryPt9uPQa7y
	 dezBcf6V/aR6Sge4ljKwSJr6dhKKtoHzFN1AwKSgZ3sKCfwx0hf7/NALS+qjDmWr5W
	 NA9rKi2daTYxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537F5ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391705333.28211.12974500748536037478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70eaea32852a20fc9839fe36b62204a9f39eeabcd39cdfb89d3cfcff65a8eb8
Date: Fri, 23 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663917053
