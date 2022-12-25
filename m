Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8A92117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EDE8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672000887;
	bh=K76WzVTx1J01Pp0/Xm7/On9uRXMH5TUIznTnyDBRPJQ=;
	h=To:Subject:From:Date:From;
	b=jgPuXJZgLwSEnwyUB74/Y7zlSxtwYcV4a4qMotiaXYT460t7RbC+wMy93mwZ8ELJT
	 J0W6tS2ZhSzyX+/C6dZExOjZyzzv1MobmpYBU53wfYI9VtqMkbxD9MB/i9Ngf9RH/1
	 j1duDV4c6Gk/Qty63+MSwJpFSTZtuCHpPSwXqHhIJgpXA8MqyXEmjDxTL5M1+BoSnu
	 0l0ieSHvRAJJJgdxG8L1z0DXMXK8FwEtlgR1FdtPHkaqsifYZQjkTzthXKjQxdt4T1
	 KnJnm2dFJ4SPN+JDKmEPINq7aYSEy0ur9kqGP0IgYT6lOceqI7BZhIAUoRFBL09NZu
	 UIQ4uGmQZtFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB59C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200088741.21237.9208776682093312238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c491289b0eb697c632483732a82ff6eb523728d8e2c6a1818b69a75dbad32ac0
Date: Sun, 25 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672000887
