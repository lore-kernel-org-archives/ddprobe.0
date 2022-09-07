Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDACC89DD
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C22C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662593453;
	bh=WMMtCo8/0apsVmHHsvBLTU7uYOs1ffS3PWFM1md+MBc=;
	h=To:Subject:From:Date:From;
	b=JhniaiFGmrqTzRgX3yFta5eE7u+NBTY2cWRTZhgBnw38XULxbgoCOW0KYVbwPA3Y2
	 JzyF0FToczT/RBINDXDcyF5t5Dmnb2tW88jt4xeQBJxikIIIn9TLvP7PSreca0263k
	 tGnCPqWZ17DGWecguKb9IUAqhwZ6dBrbpaoDGXeFTVQITwrU4W6HQQfMx6WbnKC2QB
	 hjY/wbEBnOEP4ak4VYqrCbkwQ/EFL7TNbqxj6DmamD7KZrZyFzYZL934b7WAp5Q/ey
	 hS41tR0NJl6z3eLXUd/RX4taEQaoqYVOmaNSjnYF7/A3k7rbRJXWKiGacpQ6W6EVxy
	 2qpVpp4pJHnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C09C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259345334.31399.15831263629279245171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ab17c17f3d8435736b8dd9f79ca181421f9e4c441d25dc64e116b44bd10fc1
Date: Wed, 07 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662593453
