Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326AA7F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FF0C4339B
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676007185;
	bh=wZRj2AVl576XH0d5MyhEo8Dd0cixUd34kLksmsn1+8s=;
	h=To:Subject:From:Date:From;
	b=lcmB36ivfxUfEJkX4Zh4XgRjlwnzmafkQ8ugb66MkFUsmPlOncNEaMD0TCAPHX/5b
	 EHVzX9XPYzDildhgGLFt3OIkhctnJ4VLysqzr6YaUR5guUF82q7iNRxkXxwp9xdP4M
	 SgOcFALMbt3Hd9eKXodVkw4vEArXeh6VYMIyW4/A0ypjk8AvIXOHq6FvZkNXM2EYdN
	 LdMZoxlRLS2r/YCc1HYbqCzc3+5atoxECWzjtaqE9jBq43incgZzQg7DHBxGOXwNKo
	 k6BiLkWfK528hlAToA1ew8ZM17nUIrkr+PgqPTxBZgu6nmjSWJklJktnJEq5ygnVIc
	 raPVu7sWktwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6F5C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600718576.16020.9751501575336618343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1254d0c4561e70b2ef5353de0eb8a9644cdda717150b45b05770808ae1b03555
Date: Fri, 10 Feb 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676007185
