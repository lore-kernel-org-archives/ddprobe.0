Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F501FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738EAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664527853;
	bh=xxYi8sVlgcIfN76XKTQqs2eGoYfSiiArJnQhgyPYu00=;
	h=To:Subject:From:Date:From;
	b=FAIlrNSamHdJsItkdkcwHv7+3ZxVV6F5jql5L+tSBVzABsYFpQcX15vy72JKy9x9J
	 VsioTKOEaTyxJskBuGLOKa0T/GdxxRUoA5tFuHHJm95OcTAq/ivfYLDRwgxBWIV3Er
	 C1Rz1vgJDbgK1X1fQA1LAPaXKu3XHHrzhZPWGrApLYg3L+/uJ6hW5kfds5d0g50gJf
	 qMBbe6r+7v8v9LdU4nMs2tqcRfCC+fyGM7jrLKv/w+4WsPj8kF5xQbJglZK6wTFUSf
	 aP2FYl9xT8ysbYCh0Rb1mD399hAaMDVE4cYNLnt/tMcF6R76fQ1asEd5eFW14saraz
	 oQCDoX+oodXjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DADC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452785334.4936.9093976559122347054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59d3c643a6893918931d91fab719184108cd27a1ec268a6ea815f3df670c1bd
Date: Fri, 30 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664527853
