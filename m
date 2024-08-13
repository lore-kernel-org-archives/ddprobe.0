Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662C6370
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723588554; cv=none; b=e3kKtoSaprPCM9M6F22Yz1FnoopuMP+CbyBPdIa7V7vFMlntm5LToTE9TsB7WuM3E20rJbRz11BL7GhSpwVYobjBfxW9nNPH2cAflyE4f4PSqUooB+r4jqPf7pE7b+zfwf+sXYOc4OwSQfGLLo4rZivUFH/4zXkktv3YNvpUppc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723588554; c=relaxed/simple;
	bh=5YNdNV4XioVwRGJ8F4pv05DU3SGjqCRQR23rO0TcAEI=;
	h=To:Subject:From:Message-Id:Date; b=HD5GsPLAXHyUmVz2LZYcjn9JFTUKimc/w7V+EuJ+iTHcXBYc+835SwXFm9ov19z1XO6iM88CnkO6h6b7rrehVkF/dZF+Leb+GfOIRuILn+SxzUVvEPD6n+o7NlPAnCs6e9iKqGS6RmcKc4HKW6TPDqzfM85R6/MIvcH5cqQj6+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqX5SQTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqX5SQTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA59AC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723588553;
	bh=5YNdNV4XioVwRGJ8F4pv05DU3SGjqCRQR23rO0TcAEI=;
	h=To:Subject:From:Date:From;
	b=WqX5SQTQDcBmklNlN4mrR3fGGFFh+nqsvSWk9WwpQHj8K1+7WtC4ZtOAaqog/unqI
	 zJNKZdKBhEUXVNsfA83xZaRDx3FuNcH9g+yTZRa4qLgSIAYGy5IGzT18APjmoRFdDH
	 hLlNchwGbIllQADqUnENi79nxIXi9WfELY9NtXy1nUHWRvZhT73fNxZxJg821NgZ2v
	 RoHXXnu8o+bws9Hjg+vIaTDwKx+b1CxD6b8XHAldwxkssEmkE/fs21ZbG9zGUD+grW
	 yQmxsYCSOtdquCyP6dH26VRwQo+rgRIllQox1vfAduipyx/wFBs0WEeu8JLSW01EKK
	 6M3maX6L5wDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FC7C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172358855363.4495.4439814852767641590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ff0b37531cda6cda0afdc89923c4c2c3109d19df7b5aa4aca3cf1ff6022ca7
Date: Tue, 13 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723588553
