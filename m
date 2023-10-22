Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDDB63CE
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv4MM1F9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921CBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698016696;
	bh=R2iqi36cPaXLXXsMEJ1aMmBbimCUycD4YdK9Adn/pBc=;
	h=To:Subject:From:Date:From;
	b=sv4MM1F9B2LLSQPxeFbreqqnKzBBiY8jH1ZjWMnUkqCBwu/H22BCDTJHOtYR2BzI+
	 vCBXbqGEkPhsBsHsimIqnxL8d3aFy/eBFDRo0j0vLgvOpstf9VICNSWgcfgki2MwlY
	 A9KMqqDWR7X7jhqf2DOslfnUhVYCiOlKyk5cR3xKbwbU9wAEuWYwLbXVtkZuaJna1K
	 lC8Q7Uvz5tcj0i5qYD2x6qX6KqOM+gKFoKEpZywDZrNX68jsZdVeVEDbM6WWLGsdUG
	 8MSBZ4R8ZHqGIErFqJ6+cIEblC8lMJhos7zzefrOAcENfg0mrjTcNliZss3VoxEkSA
	 bszE6m+3DqJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF23CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169801669643.9940.5827938927280853005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07709c740d77a90c48a684b4fb693efe493a01113d5f7eba89a97b999dc50c4
Date: Sun, 22 Oct 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698016696
