Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14323D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 03:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38A7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 03:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689565268;
	bh=BQebEOj4E6HEQRZafmq5hFOGmETmsyra5/mnP8lBn6M=;
	h=To:Subject:From:Date:From;
	b=g+scf3kMf7LB10iJ3A//uUka1fNMLd23ZZOEN/CeYb0SL1zKMK44K+eI2NEzEwKzY
	 r/IX9utK+8/EyZvqMjaZk3mBPQrwV0oAacvhYDmvyLWuXyhHouRmK3ZJVS4umqkMMC
	 QFwoqI7Y6/iosd6PPcHdkI2QoDHY/RmTbDZGMnmZ23LPMUJigHb7H4+6Lw/0bzYynm
	 6WSEN2eeh+K9AgqDgCg9xW34lSgcpbJmfvt4TkVAoSWbpOzN1mmY/OHPlvjCA++1pg
	 FCdt6HQBJKZYmoyq1JDHHxLnLct/q/InQiqko9bP33TmxE5wj8cS6XA14Je+0CMLeq
	 sYrITwW1K4oXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DA1EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 03:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168956526866.16302.1557085349450080995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3e415b1ecf4c63d5bd5a2c73acf46fb5b6885944e3b08e372f8b31b3f490bb
Date: Mon, 17 Jul 2023 03:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689565268
