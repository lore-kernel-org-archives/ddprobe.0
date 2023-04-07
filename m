Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7FB7E1
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 00:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D248AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 00:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680829085;
	bh=OX5B/n4wFf8fkr/C10g6aYAPANEmhWDdH7Db6KPNG6Y=;
	h=To:Subject:From:Date:From;
	b=kkiYIUt7TbVtFy1ZaEmiP3pdGsslKJVCBS44ENCPSzjK2EbNEBHTEbKMCNuJVb9DL
	 oDg+R+QrIK9GKcSDzR3SJgJtEr2LKmPCsxl0CYm4flO4aZwr8K77wgYF/WMXhEATiu
	 yh5wp4xnUDx82xg5gTrO1FIp9utBFqNfWr+uTkCRXbCPKXnjBaE1cgZ9N8AbqxHwpQ
	 KTAIBwv8IR3vPxBKJqayy6U1gb8izIPg9UV+Lov61mtk/X48zDyIsn+4YWud60duGn
	 C32z+Ia4nMcKEmW28DAglaHOMQO8YFvUlk2v9aeh82ep3UON9WvptdR3DY8XLK5SA2
	 yCeNC3ysXnHZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B813FC761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 00:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082908574.6925.16218328777205455159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756e0ed80c20c263b0e31a10b1af144d5a9bb28d8e0af467cc2fe664cd4b17ac
Date: Fri, 07 Apr 2023 00:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680829085
