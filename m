Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C080A122BC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DB2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667854254;
	bh=eLU4/UyLOvqhQZ5rryKYh8mPYaWPdKFu9riHaWAloI0=;
	h=To:Subject:From:Date:From;
	b=ru6AHDULur/2eDMsudFo2f1UE+AQIa6dp62LvbK1XCqQX+W5ScJeGrnxG/BIm6ILw
	 XqPofwkl41Pez4TB+wJM62aliOvxqCITRToZjHeHTsGLhYCcGVIh0s/ASC7UnOoR9f
	 W+IKcRz+wdqOYoaiZWp3aeTa7+OwKAJfDuyMPa5B8sfmJcT4YNy7cK6G/rLEyGsCIA
	 TJdMqrRXuMm+rOClN2d89nm2zpbYtFvvzIwRXDo1JLA0KvzLhmmMaL0x09vAOH5FwA
	 4YPqA6kOB6q2RCrihzLB3aKL6w1llxmbjryhJ9Oxz2P+qeFUX/J8K506luqF7uxe7J
	 YhzvNthG57g1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5497DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785425433.14779.5192467085861990712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71854eb57d66021778f7754c369c6cc1f64a013e68f03b5b43d0ece912ab2156
Date: Mon, 07 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667854254
