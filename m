Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D29A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD59C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668800454;
	bh=3uUtRrILhG5p2Xlob+ydRRtlZvidCQFm8dg8grcGaHY=;
	h=To:Subject:From:Date:From;
	b=jomGpHGk2sBiJ2SRZneBCs/QILdiPMg681PwyiPWjaEnRclW5XRfL7u/e8xNYxGiF
	 lsRpujXyrBcfDxQfMuAik7awt2L4X7oyuSUpilqlkFEdEX2e7F5QVQe5XjPLUldBvs
	 cg8FJy+RqNZCotwTJ2aw9jn/VqbESx0I44YH4TRJCyD7KwTnVat0oExBchF+0lpyHH
	 bDegydKqo17kEuNjshCqIpwvRUJicdyIICEqkm1+EHo1E10d8jOotQO7vNePa0E/iT
	 w533nxYB1E4wiQraiMv6gkHFhUmjgBgT+VikkdRXpMm7O5KuQWPinp7H7Woch/FCYC
	 z/7Ghum6q/Mqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51499C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880045432.3733.1585252998491374736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1832304cee409228a100d904131cfd7512ba0ae6cc171a14251a10ebcbb772
Date: Fri, 18 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668800454
