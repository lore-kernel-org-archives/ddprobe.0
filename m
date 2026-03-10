Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267663C1979
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773170094; cv=none; b=ZgGcD8h6LVD9HltJsLyDW2x5Qq+fzrF6zu2GdMY2uI6EMMi+39Kw/N4SVlwh6CDYV4dsaZTjDVCAAL6D/ngbbHXbor0/lg6FW/nQKnkrVcmf71WHPxa5avdXxDgbEh7JG7kEXppU3akkbYvbyrm6J+q6pYbzr2GeARs9/uAsgik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773170094; c=relaxed/simple;
	bh=UdpxTVNO6JevKPRMURw7Bf7uFpSpfk0itYd/kSa0R3E=;
	h=To:Subject:From:Message-Id:Date; b=dU+7zGLXygxvDOZ0IHdKgINjreLDVnQMWJae99U+aXeN2nriuCys1mlqmCPPiqtGXGstyCmW8ZPToRmaFZfbxga+UdnmVIBgLvq9tdU01B6x8bRz7Ah6mf7Qamvh33ar++oArbyxSXxMWSzUJrVwpp7bTJMdKsbuz47nPIOZw0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDqyhCEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDqyhCEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217CC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773170093;
	bh=UdpxTVNO6JevKPRMURw7Bf7uFpSpfk0itYd/kSa0R3E=;
	h=To:Subject:From:Date:From;
	b=JDqyhCEj6eYM+6C8Qbt1fDvQS2zKCRZ68Hs6onATRGa5V7ZJZZC2utYdZFyxCG3+/
	 jYNc8Z1yXadLbgQZbhxiJgrFVyofal9m8+zRW2o53gDGV/rUtz9lCZUohYi+3PwOy6
	 iybus2IUbjU7+5/DwjHpWV35OP95Ri/+jomJL4xucGFyz3vbi6PBg35qAUeQwn2JdW
	 J4CfYaAV0MGBCWJc2Xlu3O7osHQ/VXAN712aVSR6JsX4DRCgeXpyB0OtzTM0u283J5
	 eUKIK04cNlQAt2wohUYJrGAdCfb0yk4Jcq7go6ABWZ8C+x3NdTNaGYq8PV9r3FvFGS
	 6720JB6aRUgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046DFD4F23
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317009358.14773.4126755026627618483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d0573b091f24f790944e545b8a47e79afcb7342aa4aabb4a58349a159e9c43
Date: Tue, 10 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773170093
