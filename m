Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12DC23A3
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFEFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671689487;
	bh=ZnHaeXLrr55O9hPw4t5mvKTpExuxQhf3b584kjr2ZNI=;
	h=To:Subject:From:Date:From;
	b=DPqcSVzZWqT9STmdvobKhQVncIKf8nWW4MZClYdnbdX7/K1E2Mzei/Gn2LSdaXX07
	 ocYvCmixLW9EC70hG92glly7Hc7QaTc0Qy1PLUlgwGdS2qw08ALEzZg7kH19ykZBAO
	 0OEOyHhHMNlnEsMK9EcsFtXSuW/iQzJTtWHc0OQ8byurWVdriGS17Z6F0uLbMOHwfv
	 6+tvMy9AOUxOu0F+ORG4+PVkvEQMEDpCA+yly45deeDwB88YfpGIKH3oWVikg2pNl2
	 DjXIygA4f+ISHgN4XprzCTZDAd6eSZmoE8iUtBDy0iGdi93l0Rt3VMTn3qiNPK0Dep
	 kk6OQbSUAoJ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEAFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168948742.8156.14125282841327875212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdeeccdb4940fa94243e4d43cb4406b7b1058984ce727b8d3985decad693fe9
Date: Thu, 22 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671689487
