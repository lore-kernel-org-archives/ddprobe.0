Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23330A48
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVZVY7Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B06C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697890096;
	bh=ILE17egNgg6XzyhWjS338DTGiWYxo+ocpoopHFZS440=;
	h=To:Subject:From:Date:From;
	b=pVZVY7EujfZjmbavqUg+IuK71yRwGNhEa5mXgUAzhau4bTchR4bOnJQjCegULY9lD
	 5mvL7uM+N9l0pFRjx1MIygrCP2Oo4patbxykzcEwACdh80qjlLjBxOqMeacZZHOg/8
	 8W9/NAbtQ/6cn2ilH2bBmLevcefbnN+ElAgvh/6UdQItpXXX1junRmRAK1iJ7UvUE9
	 8v9V/JB7Y6gYEAWTIZMGyA8mQu0PwvPIrdH+vWPAN10B6PA1GZJkCCAwDsaSYEG3CB
	 vCVXpVa8t13kKEyLotGopvh81zug6mT71qHEPRCC62/V+KvT/0aXtBd54edYvVaNUM
	 mcT7v9VSyml1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86029C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169789009653.27458.13942007379108666779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e01f932e634803c8975bc68a4573bede7a77f66379bcac5463f4449bd75d39
Date: Sat, 21 Oct 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697890096
