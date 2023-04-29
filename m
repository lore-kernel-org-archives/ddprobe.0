Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495A72F22
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EACC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682777165;
	bh=OHCOIz7Ojj7ag/zf3zinqA+WsuzEuuMMXMJGZPhW65M=;
	h=To:Subject:From:Date:From;
	b=QjDQsBV9ztzxyqyASCcUkmnEib6hiqWvAdWt2Pj7WviVyCfDPEglK/FFq9/L+CmRI
	 x58fuEmiV4tF26VjENtC2OJqF2lPs0BtqJ57O6+33/TFq4I4lljT2FRwpR+NXzFY1z
	 xpGp5kE6EIaWlomczQJiE52m3PalWMiul+CWjBsYRyzp61mtUaJUtP3qmQHKbKa+A+
	 mS49/c1e3Bu8VL5H0WdDO95x/0o6l5/G/nm7ehsnJyLl6VgfeoeDcZsV3Y2a5U3lTy
	 kK8oJvAMNXOfPXYwteLE4lU6y07FJYD7y5Kf2y0gv++I9ava15wN1CGkBlwBArDm6L
	 f0V0cH/lVR3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA33CC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168277716578.12208.4942485162320227853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382381f80dcf5e13748a86497e94b2f9baeeedba4d007593d79b7520427516bf
Date: Sat, 29 Apr 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682777165
