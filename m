Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FFE17E6
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoYxi8eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C254C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697973496;
	bh=/qzPwIbF0vThgSD+lRUvM5M14Uoex2lDsWXcB/SH4wg=;
	h=To:Subject:From:Date:From;
	b=GoYxi8eWrOU8wegQdjI+fBcKqmMZcjwkEFVgECXG/7a7xTdxkGOaVFTENDw5dogyt
	 M2kBgpE0VTiruKuesYU1nGapnjQqfnjrpoiwNpVFhsT/V71kr85qR2uOKESixpaJUl
	 gKbDKbtpbAuV0yowag61GCCX0JGKl+km48HJeYZZ+y6TqudK05lV1rUw86szHQZdGY
	 Z0zATWXSGZ1aiYTlWbUz27wv0735u31JhNVlvZNwdrCaIBNBudKVRAroFL2Nq4xVGt
	 BK8bjJfZUnoUj7gcVIrXVVZOyZunabA+jf3fzP1CUowsX+8EKiXcBO/tZYJCXChPPX
	 g28jhP315Tp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F851C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797349638.12706.16033820794788846442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5922753e3f4fa50250754b105d018df8be624941c37f53b1d238809a1e65da7b
Date: Sun, 22 Oct 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697973496
