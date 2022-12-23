Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E666719A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98439C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671805887;
	bh=k3DsWKjeps08KGYvHzQ0QpH0a9apA1TWRvJkZLfUby0=;
	h=To:Subject:From:Date:From;
	b=Zxtc/+9QOcHpuEdlFn/4ZtwopzMtmrvtxCw08vkEcPTM+S+mjD44v5QzXcuUkXGGE
	 QrKQVBequDLRg08gbQWe+Fzkk/AtfEw6WqwcwpGJe+S0oFyGEbLPF+eF5kfVsqbQOf
	 GJpdR6tm0hlFt9dGf4jC2Fof6Je6HUzT7y1qwnP7Y/afAjx+xrWEWgnz+q6oV6ijgJ
	 F5/RjX3ny64mX27vWZt5+dT6T6LghBHtdthx+pSQElRYRsuGu96e7EVxTzqOihomrR
	 mpdEKU//o+1Xppds6Q2E3I6gavHtTI/OYwkcTaIYqR6+wpcn19MvTgFJqqy38uR0Tz
	 ZDelTozmAgsdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78007C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180588748.25239.3100993999250973941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1755668562f2a5843e6dd2b8d711774c469d2f58321edd4acf02ca1e28f0e762
Date: Fri, 23 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671805887
