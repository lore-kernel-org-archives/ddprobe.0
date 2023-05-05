Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533007E
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8EAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683249306;
	bh=0j6R5n0udMNkikWWj0mlnLq/fmET/29gr3xrD5AsQRE=;
	h=To:Subject:From:Date:From;
	b=cZxc4lLcvy2LDmFqubs+kHr2eJ8G2V6jokOBEPWVZNbk23fZNeAID4JHaJWtiCrik
	 AXsB7cy4/vScabei24nY+wqLOcIBSJxxz5DzxaKUfHZbQmh7uXfgq0eJRCi6+8BN01
	 K8RcWK9S978GgzbqUWB2fJRi/kaEFLOoyQ3hsDCy/NFBlM6OU3zXvnWB0nAFzvwvTT
	 MAACs8HB+MZLMqxqvZqTWY9p4dhQVjRsgd8j1JQjntkxM6VCZicoKBrLRi2VR9oR9q
	 5F9aLdxrK04Pbx1cnAW38VU0BewkgNil7T2ZbsXHjTAtbBTV0wHwZEsoAxnucEmPOt
	 /4UE+VOGrpVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC28CC7EE21
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324930582.4176.12043515875750525048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6800f91a766e64cea0817b63bf48719881afae4e9cce6dd54656b21d30a7e0fc
Date: Fri, 05 May 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683249305
