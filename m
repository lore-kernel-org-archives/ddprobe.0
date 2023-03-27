Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B72377
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E943CC4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679898725;
	bh=4Qha/jo1PGkZe20omhw6tIRjfFiyd4vU7ItyYp0HIqs=;
	h=To:Subject:From:Date:From;
	b=t1Wgk1bEfLmUabGpWDycow+ujTslOe/uiF/hHufrR+ekaGBWkM+aknQh+wNbl31qb
	 zriZ3QWbXnvX3tPBC3jkXyzjOcnImcIAmtcZiHZdF7c9r6nguxdpdrlckQKiyImKvw
	 boprEfhxMiqe76Q4XfS+MI5UpXCrV77AzVv5aJOFQrr1QAoXwF60JXwzp/1nR3ssHA
	 M5vxyYYV0uYE45U0O0Tny7xvL3oK9BocLnPtLTOayZ0fAZnX1jE3W9gGQFnYZaqxQO
	 aOfUScjAUEOe7PyaJbcA6jnDfQ8jCErzW9Y4sGlo8N5muk8UVIgthr9wfUYw9EHSU4
	 YhTYja6sRGrfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1A0C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989872583.19918.6512258141577927880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b6adb93d16661165058d8f1bd1079f0cac45c8d4a4b7d3f00d68bf62a8af50
Date: Mon, 27 Mar 2023 06:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679898725
