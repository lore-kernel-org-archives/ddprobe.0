Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8A7374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 674D5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661870453;
	bh=oePngGlu/ZykQ41nO7IjHIKKvRSXANbbnrtchWtns/o=;
	h=To:Subject:From:Date:From;
	b=bZKHMcTc16bXPe5MsiSRsVifhyVBB1F5YCNu7X1bZ9TB9ev9JegWi2dlCZQTIfIgY
	 4uKJ3bpEY2my3f/HSeIqIDSvuGQPlUhHN1VehW0RMkvtaBkvcnTbj2MILnyyP1yrGw
	 wk9ZfLletuMQy6yHAb/f4aDp2gXY/eIoD7jUxBZj+bEPomAkmO/I8rTkM0msSpEl3E
	 Trwseb8SAJAYAO7qSH2te7zUWFR93xuMOrz9wak99vvM1tmLf5Jme1flPHRMAZXMqj
	 ouJZlqe/mArbzKE5uUsYSM/gVyaymTrul99THzhYIWdp8tCTmfu7qtAmp0vaZA/6Df
	 FGLAd4dwHsRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB4AECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187045331.23104.14905425903166553323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba46b927c975c4ad5dc1bb7a728433e961a0d2b5347f89805e226eec30e8695
Date: Tue, 30 Aug 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661870453
