Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20E53212
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89036C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671657087;
	bh=IR1989aPjK+WIgh63vEmc74ZXPrYKo9ue9WjNWjEdRY=;
	h=To:Subject:From:Date:From;
	b=BXnCxvkECT0kVyfYCDP5U9q7vxnBCsv6OEpPteni3w7elZd76v2CS5Hhvu7xr4Ejs
	 zCs+RTolRQVRLSDZBkbIUUUzTdDtUY5rV6T6L6J7WWZr3LcCt1uagky44hfoxQFnC+
	 3vsM1xD1oLWalnxsMi8M+cxF8bEAzMKRNY7Vke5akLcajUUdi0obgSP6KHO+c61LMU
	 +NWj8Pz6wcpzKF7u8PziODH6UjIz7No7qCYUrgxgqnct5LIib5ECsFF5ycfSPyNZiT
	 R+IAzyR5wKQpNbXEdUxSmJysf1Vk5EnAvclqhAploI6Pn47w6PUkPxL4za/2vE8TAr
	 EDtGNheid5t7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A882C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165708742.15043.14931592131920137366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4ed6328722145d6e04a49b8041bb1c93bb0bb8a4a318504ec6246a95d5a195
Date: Wed, 21 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671657087
