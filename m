Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38336AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E17C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663609253;
	bh=K0LYoJo4YuJRcV6ueVqgbfTKk5Zm0WFS06yelLkOohk=;
	h=To:Subject:From:Date:From;
	b=DUvDYO3fv9SQzuyEw4hGPHSgZUzWoj4c8npvhGTM3d55JqAMznWk82L+Pye9QCdgw
	 fUG6UBnabjpIFZ/cKo80F4xmZMFzK/IGFCjkFsOBRVc43rfOSuqQuiptCLTPaoSNEz
	 65m5/srxUmTwCFommHGV/CTSlV5+SSpxvB9zQRR9cTrs3aiT9baA4Ipidw0jibrZHR
	 FD0Ojthyh/ZaL3z5urQSCe+mUDzARvTJofqQdLeulAiCL5i7pGNwnLqkP0Odqus19B
	 1T6YNHbCZKv88p2kyr9Yh1uWuisHFiq9k/Y/pwz6aPvCK6GiVM8ohnmtm8dIIGwhrL
	 YyLQfFtIQQaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BBCECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360925333.5755.17091351212419815835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50db4c8d5a316a61e5816c1ad266ecf1c65286f142afe3946d7d733d6665f01
Date: Mon, 19 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663609253
