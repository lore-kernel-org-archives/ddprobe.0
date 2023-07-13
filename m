Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB44847B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B76C433CB
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689238148;
	bh=R8nnuLEFBXHUC4FqEnteSVuz0uJKPNelJU54AD1UwCA=;
	h=To:Subject:From:Date:From;
	b=OZJMfHWg9ehFL/27bgJ7BL2f+EbuZxk7OpQO5/Z/AY0Ee6PUVcO13B6G9K0yQDt+k
	 JHZH/s6fk26/AQHXJlW5WbQv9tEyCFzNgp/QZKD/YM257vS7g6HMcGg5AHZFgrB3xr
	 oGol9LPMOSAJv7PC7oUBvHLqAyfLYHJ/ONThwDdFo+7MVe5t9m/NKKu6mu0dtZvUxf
	 OuWDalF1dSqod+3xNndbHoAl0jmsejq9hQRAff6L4f8r9HkX1w2V86ejJxAzT8B3Ua
	 H9Qjp3OUbwu/6vsgKLfslLbStgpy6+eNZV0uK5a46XCayTvMpZaqd3bM05HTAqnFJc
	 55E3R/cTWvhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D1EC001DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 08:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923814867.9986.4303394464822361625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39784af2afca11bf7fad88596db6eec293ed18120149565cd7f89d31b3a5629e
Date: Thu, 13 Jul 2023 08:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689238148
