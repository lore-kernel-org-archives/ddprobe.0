Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7C10FA
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA958C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681679226;
	bh=tb4ZRxkzeHXNifJDJjBx8YEChwD3bloyVB/k64CLZS0=;
	h=To:Subject:From:Date:From;
	b=rH955CzAqFHgoPbBMNvKyXaxd0YXJi5GodqJHJzgRS1SLwYGP1Bczn46GSq8IkFp6
	 AJYRgId1B72mcwTKaCHguP+XZ3pA2cQWglXzzMusVLIVBpUr9Ri/iM0eFODnxckAU7
	 Fj7Cd9oiTe5sQTyetiJZK5uk6mhx0rHgbQUgHluarqnum9XeolMudDswECfb2LgLRo
	 r9opNF2j735lckho6htXczEjuwqUBHp/Aul/mh8EPG46H7HkdDNWQdh/aOYXQ+9Cax
	 c2iehdOZaaEml9PXMs2rI8qhqjSsBu40a0tYYKeDNoa1qMafqOXUt9zsoM3jkZh6+B
	 9+lD92ygmwIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B10C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167922576.19115.7205531730460274128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb65edcf17103e28e6b793baf6d33249f800705d02e8b081222d10c99ebf21ce
Date: Sun, 16 Apr 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681679225
