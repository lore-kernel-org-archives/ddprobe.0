Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DD21363
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9A4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682558885;
	bh=1+yLbwRTXz5nLekgsk24pCQn1vptvkth1dPkWpGbkj4=;
	h=To:Subject:From:Date:From;
	b=d/+qRTmWB3/E89i670rbJZzM2uXmacDw4v1l81LEem64ySfaWjSyQaC2Pk5ginpiA
	 dllYrhRezzsD3uqMXegPYyXhJJLfth9jdB8eDB/p4WGU3t5F3n+RGcKLmCE1ofRtwK
	 TdUNld5VqV8MGpjrou+LwcZph3NalzzhG4F1fBF3Q0bMXKIfcvdUMftbT8cRTAtaYg
	 PBz/UBo+vkFSTbnbn0EwNg9cde3MD2QddykvysoHJ9iObI/bJFyKy2MRX9kyhbrcgo
	 +qpmQ9+gApO7owRcMitJbCulznakxLNCpnYnRhbXWzJs9ihXw+C42s43Qe3lCBlRVO
	 B9qDVK+r6PkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB78C77B60
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255888575.3923.15767596119050762592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c2a929499b5b8d704affeaecce70575a46253c410b4c4df747fc00ed024056
Date: Thu, 27 Apr 2023 01:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682558885
