Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D8D210D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709C8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663306253;
	bh=WRncVzkgbKmWzSMI3snuLMrOvMA17qowIJW4xsVOmBE=;
	h=To:Subject:From:Date:From;
	b=bqjB2CMOtcGyOM8zUQ4DX2S70FnsdIHXkSoe7eS8BqXY4wInoBvOgykcrMRfbswq7
	 8VVpCjWp53x4OupqX4vQZ0bfH7pVj47rOHFvqsfAyrL4QlI4RFoTNUbSzdghPG4Z1k
	 aTC6Z/ocUEdrQN7FUaUSZYxQuTohu7Hmx4bXQGrK5qYdx6JDioZ/W2oZ3Pz2OZ6b4T
	 CsgZ0gQawyh2FgFtUY/JvzE258+YwlfJCAHsgp8vESlz3Ffp+AoJsgu/MOIMf8XhVY
	 4Joyg3A+zp4lT73bbRzBo/89/lq97wvbVss+iqtT0RQeaw59O37+rTyhP0EGQ6wN80
	 yBVFa1kIEKFwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FB7C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330625333.21719.15078321089917164958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d268b56ca8b07b3777754f0dab9cec38657e8e1d8b0db720078db797996591f1
Date: Fri, 16 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663306253
