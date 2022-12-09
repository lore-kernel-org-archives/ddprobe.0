Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE722802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FC2C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670563287;
	bh=6aNqV0ig3TynV44M+SmFDfAct+DPeTu5qiRCB/6Q8DQ=;
	h=To:Subject:From:Date:From;
	b=rNFrBnzXeECMVE5Juvfr4vKfDXPAVHfZmMFvK+a2MMUlvOntoUKEtQ+jlqbNju+Ft
	 WTc9XD75LnIFPZoTK3MgwoCnP1qvwt57WeIDfwLBJ88qL+KzZqG+3oQM3hg0CtuF4T
	 HucSp+JRYb+zKK/8Yp9ulOT0KYNzNHMN4M5e0n9WpX6r/Wf/zSCv3wUBTrSBIempDf
	 cM7+ZA8mR4d+LkUAMDIWk/PVOZYSmb4G9apSHhf8ESJR71e1xSbW8dNrX5uJ3baGO7
	 5L3wS88w2adcs0QZwi8RH/Cw671Wwn48oNLoVQt6NNCrATRHxgaoYcHIPUq7KtqZR9
	 e37xn3KHAi15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6389EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056328740.18703.14721895329256608977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfc08b41fbdec998a602d70ce6b3234d8a3af8f073753f27d1ed1848e14ae9a
Date: Fri, 09 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670563287
