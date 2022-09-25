Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFEC4403
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70094C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664136653;
	bh=jqONmU3rj0QrLDZ6MW0JuJepLISjyP/w63yMw+5N7FA=;
	h=To:Subject:From:Date:From;
	b=nBBC+L+I74sVWBeqGJvjcTBEvWFRyBMMRYlfHxvpfkhStvZzMEvMchchPT7hUh80T
	 M56aENpND1f3SLN4WdGmfbWQTO5TvtQS0RliaK40WfMhE1e111l9j099/MtBznLRLD
	 xcLe1OuM4lPWGBCL+W5pb2v4/zASAWK6csXBBK0iUD7X+QsfqY1VHTVzWspmrlXIPb
	 jc1I7OtI/djWhiwLnaIb0ZzmveQKw1ZD9UsQx8X+nJUZxybL3xo0hM4w9EqutXkl5O
	 qDE3l69eixoaJirkaxSEVsvc67aUZ+mTLaV2CvIK67doFNmQtIYwCAgcR6nsf9DyzF
	 aQYT7cvurgUKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541E0C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413665333.9225.6920708007654202363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6e9ffb8d29ab29270a7c29f04c0d92c11d068a35c0bdf569b0892ebf956dcf
Date: Sun, 25 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664136653
