Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611467491
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 22:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CA62C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 22:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683066426;
	bh=d/iTp58OCfQ9JnKpVj2zfIMWCYA4898IR+dG/eKVURk=;
	h=To:Subject:From:Date:From;
	b=gBperIN9NqR3ySg2erJr+v0WNOS86Gx2FU5SoskA4gMe++R2mP+z9CifTQD5oqEM8
	 V49KqwC99IG8+l6wShTg3GKNPJwVyXzXAHwI7fFB5hoZJfFq5QWMNfv0kLxYCxQ987
	 UO0hfpksnsHwk05ZxJu491ijfL36Xdwf0UctWGQLpmc0S0Amsy80P3ddfpLnX4hOBz
	 RJhHFiyagmaHDuKnOdJkMMJF5iAT+jJU16C6ln5uxpgVGiIzQVHii9C2310SKpojo0
	 1NKovhq4gg+zFeKfkeylf+s13KvOHbgOqPeqtdEGmuqUurybAB2NdDfDZU24lof3UP
	 wSBaWSUmYzF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0811C77B78
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 22:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168306642584.17355.17804395980614319530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7b97906c8452d83bb67e853459757d0fc60a24ab47719e6ff47db01bcf3167
Date: Tue, 02 May 2023 22:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683066425
