Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605821FB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2E/80UT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C794BC433C9
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697397428;
	bh=wMs7Zg34av8DgZ5d+QEhhsaofIcw3La3m0+jqbgPMiA=;
	h=To:Subject:From:Date:From;
	b=I2E/80UTPKDaoaDOXJP4lCUUYDAhnKhHeW46F5qNCoeTeiLUEoO3+14TQ3WBHNdNo
	 4+fF8TdwGiA84PNFhmAe1/4q/fNtrTaJFHJQQ30z51xnf5hBkvnVHmskoKtZpB/nnZ
	 TC5ul2ADUYMSsC0wBHUhKVoyDVA/bULMvje3LfsFtsd5WKUzzLfqHEnTF0z8RzkToq
	 PJUfZugiRh+tSwIlpAytguSRJoDzqfe0kMusbMJbPi98Lis2z3qAMG2QhJAKLR20WJ
	 PGWniZPIIEOKOicManFxmbSS5FLcW2OW7o+C883VsjERiEg7RKNxJFeTsdlmUS0MQv
	 13xfpiU4cswgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A5CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169739742868.405.8152393865624383483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bcd8ec47d8457b702ed48c70a4c4ec79344e76d864a6c0206b7e59dda53d1c
Date: Sun, 15 Oct 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697397428
