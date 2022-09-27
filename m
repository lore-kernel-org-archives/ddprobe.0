Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B930C29A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEABC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664304653;
	bh=J2sea1fWIRkj4Jxml/5r+vt/4p1GMglgbxyKmdeB9ik=;
	h=To:Subject:From:Date:From;
	b=gWHaq1gCfabe7CYDdS6ueHx1VXExzQm0yasoeNDAgIXla+UNucfpze5T2yerAp1Bx
	 0IxhVSQW9A5KkukQKgI9te/Uok86aEW1usl5Jow2W6i+p92u9hoY9p6rwCCKbDQ0e7
	 kzFQ87IWtvP3r/eBT4cDLvMBDCMlP4JCI9Ca/ylUzz9owBQLIsS9I5Onvtq4LVg0R7
	 Qu+ZCysUX7/8co5TQfxWp3lTIJg2eYcU/sq//zhrK9QAf2XCnkytpcKUact7QXRKaL
	 nvCW66WjL1EXKoRcBJqdffxDW4H2TsxWwJjm1xcbpPeGUg1Yo8kVf4vSfVdgffVCF+
	 XQQ5oLYplcpSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526DDC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430465332.7659.5787902955081500104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80803137350070be7112a51b4c5c040cbe4b4287dc8437e31a887d56dabfbe32
Date: Tue, 27 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664304653
