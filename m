Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577311FAF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCC0C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688095988;
	bh=8Do5GXkVuiZAKacYF4Asi16Jbk3yasRFbPwu3ycwr7Q=;
	h=To:Subject:From:Date:From;
	b=KWtVkUkKdTq0dOv7/IP1dJk4hg8dHkA7vhPH+e6wUtd8/ouhJxtM76nLEOKvZErNx
	 8enXnMu5NAAo4CZ5+WAanLtvmqI3DzwFffDzHW0JSos0vw/wEV31/0Eb9nxzrUqZiC
	 QWJIN/LfQOsA6LT3oerVPGP67uNNdXeLG5SIXEuSG1XuFVDFyCXTO9brU4MhLUH8US
	 0rsA4xk1O9/Z0D5oK2fnMp6ZqhiaCcxYc801VzO9068g3cDgOdeiOhopVmFLTCtPmj
	 RJB4Z8ZtjdliS3cVBMrZmFO1C71o9BGXyy+vRKeiLIGkKFx5M215kROc8ejzQv3Jzs
	 Qe6/RjT/bwtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A0FEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809598878.4379.3537798531000713790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c83f3bfade24f5c284e6f1c9a1c16af4048c21ecf7da0c688c9703ed4d153a
Date: Fri, 30 Jun 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688095988
