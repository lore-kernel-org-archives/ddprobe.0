Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09F37C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719C2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663492253;
	bh=Lj/nykbrhLGyIyy7uBF06XEQTrwIPyyVcggG1q5LQvM=;
	h=To:Subject:From:Date:From;
	b=L+brnnNhEbfTLdbIR//tu3lnjRXFl0wRG4OuXUwrEL2iNZidTQbcw9Ey3w+y3EL34
	 TV7NwKqh+Yx8grLSlSdpSEbtYrqY+Z0l/pQtDj/JDgESMcLXdRTV6n9gd0pSuzKpiP
	 30455DxS1IczWyf+E6LZEjBBcMPHXrZjRzarVMSbpwNuS8ceNXSuXNa/EdANpgMRaj
	 D6nWKsIpvszGrcdjJzegJfTMBpKdr03Xau59+cmSaJeun462/qIl/fHtw3IEEAQ/ua
	 gUhz8ikM7eB7vWMRAKmZiqUuWzGTPxh0MlVuF+LWLOj3L+T4JjUxc0+nArWmyRC+OO
	 LsOtR39bryvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5587EC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349225334.27646.9727273291406009503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21aae1a45f89f8bc0735d3342b51a51cb634f8362f021ecc6e5830b9d4d1a1db
Date: Sun, 18 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663492253
