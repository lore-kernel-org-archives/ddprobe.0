Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9CD1C2A3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715449343; cv=none; b=G9G1fA+8WR5k6qkKUTILC9a7A8PickZXxCqHfe5UfAnuMzIq065JJU71J3iwddma/npf/FC1n/miWg1g4XTvv7yyA4exW/i+VL/2tX9wI3qTdLBxq/8VCcd9Yg9Jfgsn6qP+V+GVLB8R8IpJV83i6UhVVLUi/FX07J5ojZ9ggco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715449343; c=relaxed/simple;
	bh=XGzTs819cHi+l+Rnz2CNJcTXpqcE2F3bAr2iXTCYXw8=;
	h=To:Subject:From:Message-Id:Date; b=EizFkMvL4IjtkPlW8EY37mUSVhzSSWwy7GM/R+c11+tDvldE/TGIfUAiPZSKQ1jOZa+ueHcNui6XiXsjkH1rg4ffwYxxbvGQOMaoKsPWU5A2PXc0RPrbuBTTtP1N9sg291OHv7yerSE8VC52GVGnzW0lYkbXJ30zDzFeSX4Lt2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kunu53lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kunu53lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3C7C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715449342;
	bh=XGzTs819cHi+l+Rnz2CNJcTXpqcE2F3bAr2iXTCYXw8=;
	h=To:Subject:From:Date:From;
	b=kunu53lzfKBfr63Shu7YQZmurXdMm1n71bfIW6pMBWcbz4vxjSHdCGS7LtwwYpC0K
	 Dwb2lD8r5mnciN0Az1h6m9NjtYFcZ6mjXTEhzjbN/f307fYcihqALoN8S0sBy4xtMe
	 lL+TUrfipiz8eWTSrkpm3Co+ww3wPCBLAP+ndpPM5YWSuMg7kWHfsQsH5XP9aD8art
	 h51XjDhk10PW3ke+J0Ri8XQq9UMnABWPOLFPhtYpYcegJoCGmZCDnhjMmjLR2aMQrj
	 Gwh6BNWsUdD0UvDdpxK4IAPBbfCiVBBUoJasBEUYcmaJPvRZMVodQWzTtHIZEdSVa2
	 x65d/nnR0wNLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC11AC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544934276.6061.531969198715216131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbaeae948416710242033a55c7f8875cdf1864ca4e79747f35114dd8dca39258
Date: Sat, 11 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715449342
