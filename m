Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8247C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 09:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6576C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 09:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690102928;
	bh=nRWNFuoRR3qlAogvdJufAV6bQ1wuvQTVBr0vLvY/tTw=;
	h=To:Subject:From:Date:From;
	b=IpkBgIwToqxFJzOxvVr6qa1Ha5ptbjrcnaaHnLUQLJrZm0CjVTyelZ1h05N6tkSRG
	 vKetauC4JSAW/pJQW/kRkOYtRdsDx+o8K74/1G6i0/mO0tIOBvQWHDjQb3Rt4JuJYc
	 CxNZgxy97sYaW9XNbuzeKy/10veozk07AqrV3jRNI9qzPidASix8gXTa4ogXM87DXL
	 q5y0mZe0ZurfyTfKvHzfVl9i+bH+rRosZ6b2Jfk2f0oN57JqM9xebF3v0rKGdot0oc
	 iKRc3hOcY6VBrsWXAFpt6+7W40/UmfP/THkv8fda3462/mAvPRO+Qf+dNjU9O81Pgi
	 6RRNuKuh4YYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9814C001DC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 09:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169010292868.9609.3232483779820160716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81098fef2c1cacb54a51946e86e79a8806a8fe86c5c1351be8215514abe16e08
Date: Sun, 23 Jul 2023 09:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690102928
