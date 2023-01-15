Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35CE10E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824E0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673777487;
	bh=85BY7JSXSEms48WIW5REaHJUXom9oCILLW+o78PbofE=;
	h=To:Subject:From:Date:From;
	b=Yq0irVwk0t/kWcUGNKq4yrnnc8uT9fMrU61y8ykePsnmYUWGF8sxDFWnfYKGKSAp8
	 R1a57ntF/ISmuzh/bxr6pZ/XDXNWnGyIDDD+EffigGpBpBJTtOAzissEzp/Kxv9Yyh
	 g5f9XKPvyQAZ8jlnBYDMKcVSjp1uYDT+2EYjUn0W3eFCY65BR1A8Fafq5JgIU6udF6
	 UDMEv5DXU0vrhBBNL1/IRS5HBADhGuorAGFpoTxbVHXj6LqcKaJ4ckRoYZNQlfatiz
	 9hvFFLrVy3Mf16FY+3r+NmsM7n95svev4jSjUGayC1G7WehhiBepxScCwLUOd73Aoo
	 x2KqJc2dWu8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67114C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377748741.12084.5106214950812593090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afde3ec7d919df9180f8c50e4d2b6768a5afb3582a6557b9a904dc83e218442d
Date: Sun, 15 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673777487
