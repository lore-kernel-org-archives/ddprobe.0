Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FBB2561
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A41EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663919453;
	bh=Iw5GtOsTRvF5Y9MPDTzz4+YoRuZX7alci3LfQyHv6uM=;
	h=To:Subject:From:Date:From;
	b=gctZvbtZyOv9F5i7+umJtT1clj8MGa8F8XfRucvutooW4t+dKpqR/LeMy9TmG7BWr
	 blppHTfZyuLXaI6KloetC6NiNYKXpIWREsLVsuHkaTnLQVctYUzywS13xFwqV1M9BC
	 HTkuUhXOe+yxAw2ZM82HH/9SLSPlw/Y+iNqvaS+676+5h2AmzgsILLcQT3w5WGKPhG
	 WJ73k4o/7xuudsRLMa0wj6iob0ScQR/fPf6uksFdliHkOVs4+Fd5qCz3OZfrmihTmB
	 rnBPEAR7gWpbDwO6lF/17hu3xe1LnvLzVoTscn1J1hMryE+Jy++iSOkvlv4BLX68oL
	 ygOgXxoMToscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F72ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391945332.27579.10584818701074310064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373f1a9077811c32942d9244940d3fcad948496830ee503e4c056e94054b5f40
Date: Fri, 23 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663919453
