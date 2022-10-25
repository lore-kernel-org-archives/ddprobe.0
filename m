Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DE1748E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668D6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666720253;
	bh=HagbH2WbisjkWrMYDFi/TgZ8lH5jdZC7cLYAtDrlLWU=;
	h=To:Subject:From:Date:From;
	b=qRYv5wzd+OvGExlTeTnfbSlqw31j5vydRHR7qWIKgpB0PXduI1FBuMO9u03xqI9sv
	 o6fAR7mN7uWDmVpJJIiZlI97TVdc89lVWFJyzJTetvwB5BsBkiEGBvKXaM5tw+kkhF
	 GVFC5eGCGBCiVHHp6QGIg1EXjNKaHuh6s4kSSYNCq9g8cUVfB4VM27+Ip1QdsMk/Ur
	 oK6WopJasw6DU1fmMOcTS/lfc0V7uetTA05+VabYWRbmMZbdR7KJkIw4S8VtZcxFzN
	 vhdFcAtvhffek8V5LtFZmWILGBLJc2IUf4l1ufMjL/bB1iDSmZn7eUSGXe9llyB5xH
	 IzarKF6zeiAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505FFFA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672025332.2720.5579515529502636624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a795c91743a9aec59fdf99246c6048059f305a67ef59abf03c9322e46ba201fe
Date: Tue, 25 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666720253
