Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7958106
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIi0dAhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DCFEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705010896;
	bh=vdrxm5iTCjfy1NdnBclm+X5UL6Ue/ZDnO+4OiVE7Ofo=;
	h=To:Subject:From:Date:From;
	b=DIi0dAhS0ZSBj8/K3Xntg4AHps+GN+E1v8MMyimoh4HtKB/1P+1KgLECQ6rBb6BvD
	 1ugx0USJDSBvxJQ1MsOcSgvBxcowgsTUCSnGnqAMnR036Bbx15y9yf0P22m2dMw9gJ
	 Od3yTSqq6LuG0ouU+A1l4HqkMFirQ0TNxyJKgOQ8Wc5FJrwoXhlTg1cJP4Rh26mV14
	 8/7Dl1awtL05iRjpI+wjPWqWsqh06lziAcjo8IrgYjjQ6cimnEVoKa4U+viV9Uebzo
	 Anp0knJCgPkxWom9VJesOOea20daijgG7vae+uLq29Kmz/Lc6b8ODKdsidtOciWw3g
	 tFEQO9eevkE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7C5C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170501089642.4855.10527119090422409530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9743e5755dba2b63d531e7ccdd25bd68061e216fa67000a08a0315cc5638cbf5
Date: Thu, 11 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705010896
