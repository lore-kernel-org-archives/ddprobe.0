Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FEC4879F
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ1ilrWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EC2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701354496;
	bh=yJkJznozpyKV6Y7V74w7cnfrjfeHjDlhcJiGjmZrvxw=;
	h=To:Subject:From:Date:From;
	b=pZ1ilrWVdtiz8uyUq5nm2iWt3R6C8RTADbkmqDaGmewV9VtabRCpb/3s6z+1RVswW
	 0szkB1vUo/Jps2MBVuzZIhGe4gBnfl+TUmcRsWrdotxj/oBiMzCap+Rq7W4TNmMlhq
	 qVNRKB6iAdum8MwfYIi/4rwm7XIc4bkLIT6fnRz+s9KEr/1+ZLZFptO2mNxqF2qHdE
	 /tZIoBK6TRZDgYESG6lpl3DqvVmnb+VlkMTtZNT20vAn7xW+DwtRmI/3OE7cK38vNf
	 nZgaLg4c3J86K2lJhm1o/NUzscn0b/aVxZiWZu4cZZ7pxZkFedfbS52FiVXxDZqM7G
	 1w4z2L9C29nRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614ACC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170135449639.24981.14384119673862733812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576aa8a6c60c30c32a75495a626df3ea7779fc2336f77318b938dc0f405ab57d
Date: Thu, 30 Nov 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701354496
