Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B978E7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9F5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663050653;
	bh=GzLUQuZJAAh4OafeBpRoc8Ewygj0C78/xA7G1aIhl0Y=;
	h=To:Subject:From:Date:From;
	b=BKN8KbwCAP69H9B1BjNqbrwj+tXwi1Wd+jLvwv5eq7tNA43gJoRiRoPRCU9nI3gYo
	 W9pDbIQp88KTojY2QiT6BzsG2bGZ+fsb3jG4qEXO3OVGJbU3XRkyhUGQPTQeGK4rtQ
	 FFOeGDpkBJx7TIxs9K42Srq54bfxV0cGzAYx67BEx/F8xfmpoyNVCpKrhrf4wm+vEp
	 QtHi4Ufy7Ed4ciqw/7/B1W8jYDYmxUJXKmkDsciFizAuS7mpqcd9Y/f3WYOlFpp2sr
	 wCv3iKCxYYtqiMeJc2lCCvYE233L18IpRYRCfOHeITq0lQGG07WUTlYMLnFL+qsimF
	 t2gwfYKqr9Qdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5087FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305065332.25687.15731868221863234625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d94527f60e969c75b87b583ce0a213f7a2bf4f75e6f18b9f3d4334834c4314
Date: Tue, 13 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663050653
