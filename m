Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B631A7F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68769C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664006453;
	bh=dQg8QrFwqvIxK7hLSiQDTzqJq2evOHzOUzRutJsElx4=;
	h=To:Subject:From:Date:From;
	b=IBGe55uXu9CoIo8+6LVvKr3YwaUcqNBTlMiO6DAwLtSkTp4OhfZKSQZPVCsMuIyrw
	 FsF1ol9tn0noNedHwSdyfp/+rFxjH0Elij/6v55GA+YbW1lFiDQlOK02nrA06jVE6E
	 kEGj6kHc2lWWLN2OFrwzc7DX1osJqmtMEXgFWVrkDtmwAJsEF40Plohu31aUvWXVgL
	 Gj4kAt+PB+OZ91KwwQdjf3tf2K5MqmyNO3WwnlJdLkVmKFOgHlrMm9GU8MWHWuMMoV
	 fssd7GiYHDZz+K3LL9t1IqxqiANlTk+JcuXKZ1ivBbvVJrAtLxFB8wc3SWjs5unfuV
	 MzBfF+/qK/byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4BDC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400645331.22327.855635022479354962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47352f743496677b0d10379db75e232bc6254f08f07b07f8ad9f706d59dd447b
Date: Sat, 24 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664006453
