Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3275BA45
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88433C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672867887;
	bh=lw5x7+FpqWTyg0ZzwxS7RcLJoayOor1rREo1pP8b3Z4=;
	h=To:Subject:From:Date:From;
	b=f3RpHGnQ0uIANFTeRucTN/+f7H2xcO5Gmew2BHv74ZWl+Orwt6eVS0/EED6NK9d1S
	 VxB/CjoEjoZZ6kj5c+Xrjx8GdoZI6x5GcGce9DQSOQ7u9GZli2Wa37DH+q4Yt1gIBV
	 Z3zC1+1bHdVPTbbTFD6a0Z11Kz8Q+WG5StYVzVPu86vYAPR/asnOtWT3jZMX09jw8m
	 gS9xLO9TS2oE6hKM5vPrX386cQEZNROb8OdAeA8OyZUMyEZ8OpLYBQkX1lpYA7hH8T
	 aSuk+WvD5e+a0cxrFP7dXFElswkd8sHjYOYALjJd0jzX72vcDzjfCRlrVY3ZtlG+lo
	 tLGay1U4f2I0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A062C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286788742.19225.2657698941498274193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593249fa62094fe8967ba89343173679f29ee3292d4c0bb04cffa266f9aae474
Date: Wed, 04 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672867887
