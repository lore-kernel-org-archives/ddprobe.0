Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584231170F
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C096FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695830768;
	bh=bp7873yjhqYX/xY8s1NVTvqHq8ebOI6a1XQxcEBTSfk=;
	h=To:Subject:From:Date:From;
	b=pR4/SVBSh4qClJ/0rtWUEomm7virA44RoqUparf5AnCoOb6ldVrCCWAbFrE1NZGls
	 3rwX/hIZjzjVrxtdgGQ8l/+2/L+seYAybxdOhyd9ogdqxsknxsWh9OuRhgi2NW9b9Y
	 fisyR0ABKugr0h8akzszO+Fy4Ez/nNR8MMOxEfsoZhE5QhxlXLdzeifd1uB575Fk1V
	 xZ2GQPGTW6rqwLI0xxhf3xgid0oHKDOcPf1rGVzajmIkwM65wV3zbku+ZDGQAdqZtk
	 gqPunVD37GdVPWPq41q4XhqFqYCsZVxyKa2KcQLmuA3dWSuyQxq5lcbzNSALIc62r3
	 D/7LyNSpc2RDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6952E82CAE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583076867.28058.3086427808266962263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60b6b7237aaab7ce718afbc977b1d6f1eb45bebed5aefa4b4d7ca28a4f11f09
Date: Wed, 27 Sep 2023 16:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695830768
