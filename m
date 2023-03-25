Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CC039B
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE88C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679765526;
	bh=YKmYeWsmt6U4iSkycjmPV8mDK7oTU1JxVzwiCkdsMiQ=;
	h=To:Subject:From:Date:From;
	b=sKPo7Y0p+7SC09e4OM1pFvRPXjsEsNni/gohVdopwHIjq6QVNvH8C0J7lcNoTt1w7
	 rBWNcIWaNsa0z7r7ENINA7qjaWLwE+UJSb0DM0h+tj1XMBPQM4zZh9eq7IqW4z7640
	 yTTOIeXPTSoyDbQdnXHUtDKlUGdOc6EWj6fe3cAVX5K/HHGByO3B6hOU+hEwjzfatS
	 QXNqkfLK9VgVVgBjC4mcgE7xw2NS/oXIJV4jv/Jk3zjQt6zi1QwMjggnmFNA7sDVHW
	 BGye62XzhNWk+aPOE/Ji4BNyQ3HMaH7fVgNFbNyAlZdZmRpeds5GpKEwxQVE5qr1ea
	 JrRHOb+hHJPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3CEC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167976552579.5056.11644020987741022819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32451e39dea2d55be732ed5f0aad4c052d0930abacea988108c8193d27abf393
Date: Sat, 25 Mar 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679765525
