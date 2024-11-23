Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2633017C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732386354; cv=none; b=g3EkVOkBQ7qQg0VMuyEUGnK///hjc9NluGqnh9M2a72RCL+DLJ+gDxyfeQmifI724E9N6YTmFVgwZgWtf2/aNEHF+4ZKffA1qoB/7MoODk9G7KHz+K2lmZIHzwrbXcXPUyKv0b6+OV/1U0GmGMxq95f6QYnmEOJOWh3/yecBLCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732386354; c=relaxed/simple;
	bh=oK/QX+N7/GKHBJNk4DOU8F0qSqASLnGQKPClskMxE8I=;
	h=To:Subject:From:Message-Id:Date; b=BGjMZdWs1j4reKuy7xiCOZfmfx2AzhIfidWGWkhX1UCb+WLcV8WHqR7OjZqluV0tkzEqafVqqz4AvX0xsEsla+L0JplJAREz4zNcOEx6rIWve7py1k0r87y4z8xwyQQTY62Wh010XBR74RscqDBom/Hhm2AH9QWIlVdFIrQjcvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBoh3rt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBoh3rt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA18C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732386353;
	bh=oK/QX+N7/GKHBJNk4DOU8F0qSqASLnGQKPClskMxE8I=;
	h=To:Subject:From:Date:From;
	b=XBoh3rt/zI7LMdh1z8b9yvwiRpYQehT2SKTFyLPWavCoNucuO1UNkbYIujiEboKPz
	 mT1aLXBQwOSyTZTkXn/0jqisBhYpSdSxtiLS1SvVOiJbQxvsXzs1Tkvl7wmuPyAz5P
	 PAoXPDgpt5vK4tPVkxLZ5cNll9HTghK5DvpbqUgWHbF+z9+lqn9xEMFX5sAXbzp43Y
	 cLbRaVxvCbKzV/F663pDk/Q23D8SQIOv7BFg195QGY3UQYc0sr2w/LaCwLroebBHM5
	 hcGrDhaEsLpOUk5y/YzfaC8MgjX8MnQk0CqDCrU0+BS7nc5L8wlEIjd9JmTItdY/h8
	 2wEnV544yLkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E70D75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238635360.13901.8221093199427499033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33156c121725082f875ca5c94bcb473497e3dac54315f77b290f47471535cd77
Date: Sat, 23 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732386353
