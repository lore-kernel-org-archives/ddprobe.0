Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43475C136
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 13:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C807CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691155988;
	bh=SPIvJ3cVoLda4NHAekz09faw0FmV9/5a60ft55uEwBk=;
	h=To:Subject:From:Date:From;
	b=noZcDGBwmxPdL7IY6rI2c6t/Sjt49MRZiWjFfmjNspXS+66nXKQwvV7p12QYwF6Qf
	 AxcXlyL98gFQY2IbtGb6i8jBTYBiQg8gZ9mKGY0ZMOaibj3A4imq4Rni06/zP9RCeg
	 8arSTmMlgBV287gv19t/NmPPjycyrKupfrDx0DRMC3mWXDBBgUtgAdYadzY6ITw7R9
	 uCTuxWZ2QhYPJpbAR0KXgdEqsa/AkktCDYt6aV5Wy/Uhr/vw2Ih6suN7Uaa3VEHKzH
	 vPtX6+CEQ6sABmkxtW4alTlakFYMMY+VcghxiFWJPwn7iefgiZMKUMq6V780bwTVdw
	 fMqpbZxfwDHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A1C04A94
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169115598869.12536.15406674132291217291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31a038ff5b54340612d1e82026a40d20bfeb0ca25c26b6aab3a0ba4b389e531
Date: Fri, 04 Aug 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691155988
