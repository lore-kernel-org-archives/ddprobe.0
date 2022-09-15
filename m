Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0837F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E16EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663228253;
	bh=03ZS9RO6kylWmJiXOujxGASg3xRE13jqAnkUC+Nsa4c=;
	h=To:Subject:From:Date:From;
	b=uRj2gg7h6dVA6+dwziSQZ7Ib7N9aD6UDzBZ1ie/NVyPpeU1IL26uELML6nVHPgjKm
	 Aq+zNHwmGV+NVIrKlUVGMVbzXz298OfQfpPWeeDsrZLFFobZbm3K2QolTGvb1USCHI
	 +Km8PLQcc0JOnHT/pixAKgBs/IMbpbnlbuYLCYYBLH+hIfjT+i2cHpSZ3ppQDVDTM8
	 YvApcFz9Cy6pefFhvBwEfTJgK8CYGos8C4/2RA4H9f/xgmp9EnClju+lORmhdg8XZn
	 /8rutMdPrmLtISCLnbFC2P7QFja5vrQFL0BWRn/LQNhq+CJoNkV92aPCQWzd9KEQXV
	 VvFQ5SCwuu8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E43AECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322825331.20108.17398715505990328486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd9dc7c2053938a6c9a823b3f825d36291e1e6eccb5a4237c68bdddfa0a8273
Date: Thu, 15 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663228253
