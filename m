Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BDFDDA4
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCdpjEy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E77C433C9
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698833296;
	bh=JQklz7QJ314YauEJtG+RQdwlwUE6uxCmjEhgPS4u9gc=;
	h=To:Subject:From:Date:From;
	b=KCdpjEy114tWLIqkGggVogR5Pd0j/9uyPEblAx6379AEy7RWs+snSoBXnN+xYJcew
	 F+rsiJDBr0l91WBjBto+mp8lU0RH6Wau6KzygtiZxhG2A/7OT7oSqlWnvJWMuSeA3n
	 21rwgbkVKWsAKyXsb1rHHjZzLYWG/F4sMDdAZtggrI9YXcmbgylmjSjHBiaRUlIzh8
	 UJMkyIuOSNRShELMeCPVObdVeG+TJo/DlAW97VJm4J8PBtyXuidGH9rafEOfr8sPFj
	 jiClvCcsK3SQf6Pnpx8QJmEUcUy7po61e3DwG5i3QmIgWvv2Gtohf9oEAoHZn0uHa5
	 p7pMn7Cm9/iYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A413C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169883329642.20847.4763677068513097024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db12a55d4ac9a497f5e576dc8ce0453c5145b5f916d563900a5555fdac999a16
Date: Wed, 01 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698833296
