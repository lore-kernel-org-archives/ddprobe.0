Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF51928F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E727C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664042453;
	bh=0IOSUiiJXDXJUC4eU2rWwhjPzWqZP1sluTHBbedxHvc=;
	h=To:Subject:From:Date:From;
	b=kIZDrZDgPPSRKcejoH+Wa2Djm+eSmSdcIcMzcDnjt2kmM06QF/hgXDtBTjaPePBBZ
	 RkHOCAZV/4qspGoS6OF6Sup6dg/Rcev6KtzZPqYfpB3giZNkWKOAP1eDhuC8BLLqlZ
	 dV/eRf6HPBFB6fu9X9bJgZIl2XCH4eNvDt4jeZPaNpvKY6hYsm7TE6tIvZl0zJHp7E
	 ozjUwzkdaLKLQ+Hi937f6BROOflue4rI4CMCJm+2eOlz4lueBlOPhPK5Vyvwd9zEoK
	 2BdckqlJfTgZnTSGvBmKNG4olPu1N4ZgIJTBMic3NzbHizriH91GM3X9xLCeLgQON5
	 RC2bJO7vWTXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5280EC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404245332.21412.13189609245224369902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837e5094c7e56683d1d2947860eecd9531f5f788c0f99133d202e347ce619817
Date: Sat, 24 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664042453
