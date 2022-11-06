Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF11133D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AFCC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667766054;
	bh=cVqshzX0TjnUWO+NyFQW3WnjO7RvOl/VTfjI+jZH9ps=;
	h=To:Subject:From:Date:From;
	b=L3FW3teeKkej8riCI9AziqoVXfpEx7VarumFAVjwX4kOWHlKRPShdO/QgU+sayu4G
	 Hxie2H4IDzqeDrwXS1415Ba/tKPRULOlKLTN255akpwia5X4uTpF6N1NCcUmW03d1x
	 WjK14nfC4f1wQX+4L3sZXTmaig9/iYgLLcOD+ydu/1qrg9rSSd5plS2vRNtmUmYi/x
	 cMX1juK0HEbyB7SS1LTTmXhQhUaIrB1lf1rN0mpIPrysO2Kjq7XP2l4bg06u+apUbj
	 8p3zrHkikU/lekJC6ws5bepMbuNsBESYYoyJYQO393jSjRnGAebujucDf4JDwjmRR6
	 UA8gWnshm8x8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A5AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776605432.29056.6368562854440266320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f5e8ac0dd8f86cb4e07c747f3009b7b838b461b7bc4f67ba632c078aa74283
Date: Sun, 06 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667766054
