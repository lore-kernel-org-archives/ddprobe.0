Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F945A52
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30F1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692359648;
	bh=rk8cymyBB2tq577alGt7ooQE3Ps51U+YOYMD2CLrWcU=;
	h=To:Subject:From:Date:From;
	b=ZKTaHjto+hby2rCSssTB028qPgEngqL7SFSOuEMSkuzq89EBKvGxwQV4/8QehtOY7
	 HvKyNgQXScwIIwCm9Qhsg4ahCfnc2M0CzY2B+vUVl1B4aDv5Tx3Ab7/XpgDpA4cCsZ
	 /Wyez+/gFQZGJNsGS1K0Wva6mp312OVg8zMiVNOqZzEjkAiT5uglqd8/HdYgLn+dt/
	 v4YjyG6WV5QALvnFV/ZVg7IIb73Hk11a4PP9WifyG1t7MSQ7gpniOlxiTg1nMaWM/9
	 i5v5ZFCvztiR8kd0m1Vx2S1NiZ9MTblMO4Gl7mGyHNIjec6xFeYkfch0M1c7/QEswD
	 84ohqhrPhsNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3E5C7113C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169235964876.20589.5818870997514727066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9ee71c08b0e47c53ac9831715a5cdb5ee99b8b7fe9fd635de3dbd307451808
Date: Fri, 18 Aug 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692359648
