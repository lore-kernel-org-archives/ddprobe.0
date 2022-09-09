Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B443A622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDA9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662698453;
	bh=/XNUbRwGohgBXz2FuYMGCwF47VaqBSS+7XKHjnNFY+w=;
	h=To:Subject:From:Date:From;
	b=leZYTF1DnChpARpzbHNKh0EWVJRUJSLX6kDN5p/fxlAMs0gUsgnLHoYrJ/0CNXwKR
	 zC1wTmdFVhvOLEfQ1xizqoyl8TuxpjZjA6V9zMC7DtgGEhBTJiyMEE2mLPyfFnmldG
	 sfiB37eedXk4DLpKOuk+d05QWC/7y+1NlsBhSngnxbwhWlajaPlmU5rUeWVzFde3oB
	 MXcUHdHhzIQEueCK5uDudwcjs3km3wTxZ42SBF5qqkoKNrrW5YVSKMJB9iGiYAIH2/
	 T3RszK48vTvK8abeW/L07MeRs8jp4gPuNNm/NNfCRfxloFOmn5gUIItjjaWj7yQ//S
	 lLPFjotxj9RIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5056DECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269845332.15057.4860920703748824612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e748c2cce86c08adc61e7ce594986408fff5445b3cd9ad67a43aeb5d9e42a7d
Date: Fri, 09 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662698453
