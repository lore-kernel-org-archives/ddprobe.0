Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB6B1367
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B61C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670399454;
	bh=WiFvW/QHugXIix30KnaZNjpIRwoB+EVmDyaOEga8qJw=;
	h=To:Subject:From:Date:From;
	b=mjghP2avcOnmAfq+8W4GjfDJKpgTh44wmAP07mg0zu8xXEpgAl12HjP8x2NGe4O/X
	 myi5BuNTWNNhAC+MOhNnk71tJKDvHW5cKkqcQ0IwN1V0HgH9fYEPbaVy26RZl2gQ+S
	 tEx0infu5JERdXq0IkKE43cPl9JZrhsTa8YHaWKv6mJVdGb1uU5g3N8RCPOxEjsY4V
	 ncbqovSsrxH5Gpds6TUvD/9lsWHX1kCdSvUJDSGbiRPYi3mM54d9EM4SVpKUJ5CQa5
	 JLOraGKiQEQ6UV8VKHX2UIReMhuzD/PxQcjl/4bAJK0Mg7tmOYoVMJ1yxutOOZeHRP
	 3YrWuXsf1N7qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B5FC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039945435.32140.8188752653160601758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89d5ee154b80cccb422c01842586dd079841eeaff537c28072892316dcd1281
Date: Wed, 07 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670399454
