Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84747B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815A0C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666592453;
	bh=F9fvGXlyBmDZWPbDh+RX7NDRjIBOLpmAbhr2srNQi3U=;
	h=To:Subject:From:Date:From;
	b=IInNFPj2nkbsxFVD5ReWrGO4uKpRH8x1rk8Eg9vb7pmqBqsT60ThPMkwzxiTZz52Q
	 E2JR3iwGK/6Ss3jxfwUqf49Z/2cAwpzoS+VOTZj6eUP8wpUkJp7uwBbBihEu+tok/5
	 9Va8lSkLwppk2Dgaz5etK0KsGPxIOAWPzDZX+Pe8AU4Dtm+MWfzik6OWeetE0RvXVp
	 99TNtmzdFP+7MRbp3wgyMjQMW5DoIZT5fpp0i2qcMWHmssc3pGncQtqpTMdUO+i5z3
	 3Pmbc0hWhJcKDnvSYZVE43/Lojg90FogvHqYAiwI5mjjxZNZF4/kSce00Bb8R3o4MD
	 mTwpQCaIRXnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FFCC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659245340.6023.12184545144827165660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f1d6b87ca9b49071311c15e92d54263f215e377390c31da58d905fa3229169
Date: Mon, 24 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666592453
