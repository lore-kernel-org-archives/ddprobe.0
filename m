Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583505233
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22EDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695782108;
	bh=t2b381XFnGHwJuRED2MSd67Omk6s3pLKD+E57viCYIw=;
	h=To:Subject:From:Date:From;
	b=D4nxIqiUJKS1AnOP5ErGhVnJQfLRpJiHWcHCkDRm6H7uUfRos1FE5tJETj86h+DBK
	 Ua09v+r51IBU1rdjI0Af+vmQTb7y8XZTESZnBhg8OdmFCcQNmkF8tvqhkZpr5KAahg
	 ZuSebze27fyZsV03EHIxldp1OOXO2cWfv7U5D19ViYvt2q1HdN/aq4VkQdx+Jhb7KU
	 GoRXNzzmNAQm1O4rkjSngLxZywlTnvaF1wbMRcD5ERxtnRmcYb4WjKAsxoHUz5CvsS
	 ovU7VZs4klDcDBQ8h3z4Lz7SGBJokUUNlnZz41EQAZWsXVr6CwqxD3AWE2QVLzTu8o
	 EJnu0/Hb23+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D4BE7F150
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169578210866.12927.321319510608558438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77454cc9e541dcf08664adc5b4e2b0151d54afc3612c70dde8f8264cbfea8fd4
Date: Wed, 27 Sep 2023 02:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695782108
