Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7BA3DEAF6
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862494; cv=none; b=TNyE3bI0ZJSCS+W0V9v8rur28GDyxIibHvse3rI4McxU4rfaQLOHwXmWw95/haAV/I8b9n54a7XFOrf2nJsF+pkDJIu31XQ9rG/xW0QO5ef1wZgPSlt1Gjk31oo/qsXsal3Rc0cg3hlhEfJcWIR7jFEy/lCFOK2kbTwkqmFw+yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862494; c=relaxed/simple;
	bh=dEdGXJ6Pl0a3GVTTjMm5Uh+c3GagJmWElVuQW8ZGLwY=;
	h=To:Subject:From:Message-Id:Date; b=mPUDC/qvYyBQdw+meYP90rKQxlOIQrjOwUTQCb2vAvQU53NyDP9DiYRQM5dzI4SL79Uz7m9C+MQQKeHd8acrgIgo7BMASXSbaqTYEKXvy9KWQi+0+1mt+I7LNLcJ8IK6f6qC/HL2g3rqtmPqq0REhZ4NscYSwmymSD4BzkoWubo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADLIyWpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADLIyWpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4A4C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773862493;
	bh=dEdGXJ6Pl0a3GVTTjMm5Uh+c3GagJmWElVuQW8ZGLwY=;
	h=To:Subject:From:Date:From;
	b=ADLIyWpmVKfL3Ubg+7V7b53B7/VNiaSqsRIdvnj94aAv5Zdch7fjm6HNV5XjUXMKM
	 LPjlAWtl78kS8TB4VBMBh1Yz4AUk4NwqwtgqdsQuWBPHBH94CkY8yTAHUzStL5bsbV
	 /PlGAGZEuwpkPUmYIyNHmYoHOyxXDlPp85UfUxq+5bpNOCA3ajOy79Ab5KpMkxdsq4
	 wMjMqWWXjP2YsXZ9DdtsJ669LWKSiXnnPc3suTmpq+zE+VZEhI9cCfqk0DHjwTsHO9
	 hDHXTOhcmHGQhCVqKP0Z6byMcCrsC1Dy+GCfsxhzuVyyaJ/EkWmfG+Wq0kmG3h7kre
	 IKKWCPmUznldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B98C107760E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386249362.21735.10893528981210156367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dfc6299a339719e8b4afb9832ec50ff91827e39615f55c6315c666e5f7ba8a
Date: Wed, 18 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773862493
