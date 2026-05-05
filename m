Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0889231A045
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778024854; cv=none; b=P/vxikAU6LhkZtr5JIhEqmj217onzlZ5iArIqvKPk7S2TRRqM5aXHgG0kq4m9IzXzqTDJenIe3YxIsLlwt7OkMkhuRHDmGRM4oSkYvTte6Z1fMfB+b3felcy8p14QY4twu5A2Eph3dz/W8Cl3Iu2l51FvZtbjNPld7Y6JewWmkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778024854; c=relaxed/simple;
	bh=bbAie4o6FMf9LTR5uxK/VeLIhgPFaLpLM3WvxLNB2EY=;
	h=To:Subject:From:Message-Id:Date; b=DZIvFOBs0rRFOuFHUXmTkZuPm3CwDL/3DVZ+HTGY4fYwP3xfImoL/u9ujqIHGVHSz2ZqyH7JQYw+9MJ6PSq/kreXE4V8Mo0jkfw+izTHsrC9NZyKJcyDD1SUQK4qfDKlF08seiRJkGBct2EZ1eSI+8mpf2X0oZQOkhvdqLGQFFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEqzSPjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEqzSPjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC23BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778024853;
	bh=bbAie4o6FMf9LTR5uxK/VeLIhgPFaLpLM3WvxLNB2EY=;
	h=To:Subject:From:Date:From;
	b=VEqzSPjIGjKkUll0sNModS53c2S+X96gLMgnf3tpIJiWSfUm1dtalhKeJP40/KaIK
	 Is5VSa/zEdQPw68M9eNXMxL0UaogDuXemnK+B5R7D/BECOKFogB+h/8HUpK1oOMoCZ
	 jXfP4NqaoAZk0kWnNc2+KbIOy85retiVKvf25RaZMnSQgchj89Rd+31oVXH3WZlqZr
	 99PjZGTHzsOfGzjbO+qJROAQHQxEoTq1miSQ7j8X7kxktkWB2O7Uc2m82nwSRrDVcq
	 UP51C6fEYRFWBwZ8rRsp1/kq3tIalnimS3dnyUat/aHu+HE4UmveFCn5jgrMBtazVt
	 hFbMEhUBWtyUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB162CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802485369.13564.13476486491069552544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbbf5bf44acba3d363439e5b5d73c792068f8002df32c0eea5c4e09179bccf3
Date: Tue, 05 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778024853
