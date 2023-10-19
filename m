Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7192314F93
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYHBXTkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90FFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697747892;
	bh=ZHXH9hvRQ3Tt+M5hDLE+CtI6biE9uFpuYY/YCPw880U=;
	h=To:Subject:From:Date:From;
	b=DYHBXTkObHSzBG4+xi4GZi1xPjK65+WcrvtEn4pS6KW/q4dnkUE97kXmYMbvDf2gv
	 d5Ad6OmxakS3OWhfC4sBJ25vwL4Fr3bLVmC7JGQdXwAMQQUdjn4UKkNWZW7yKV4s3E
	 Y23DM051wMr5/P6QxX5WbYjR9zqpW977zZuq4nUyULfzHSk92QHNCYKGr88NJQw3Nd
	 b3pZB9VCDqDjkVRQGEreUf3lPMdp/b6q9EcF0yVB8vqX1xM68tu9UK7D6O6i8AM8W6
	 PW98bRIc0wBdbhggtMk1BbcgThutcCI23FO1huecPvPHFktJEKkSvFk3V62l4pWwY+
	 SfmmlAsh2PD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB633CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 20:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169774789282.4460.14130740625226803851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a571e4dbc6c50458b23c41f647181c10dfa7f82ef9df04a90535b0d5f4195675
Date: Thu, 19 Oct 2023 20:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697747892
