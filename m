Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445E5C9D
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 14:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C043FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692108788;
	bh=BuLg9l9P/4edoYNTTYzGJu6BqsMqkef9iHq3x+pQyRk=;
	h=To:Subject:From:Date:From;
	b=G4HOAZPRsxry+fPjT1qS4ApLWSU90+gy+4MIUokTHig9LPOy8eojowyYE/IqNAR6u
	 lwww8y4CHfEVT1ACJSiu4BBLvq7uQ/F9i4jIfGNGz94BTcm3XHIQzdWsKkWLPB0Pn8
	 OIgpOyD+QHhFDdrtDUSwwOYyQMo4bA1ApITpWD84RWnSMxDS2ZYNFhbmY/VdADoEsN
	 lADfS48AanS5iWc6PWlT6Vpo5FRYP/EpcwkyVEBDSdIHVLh/qGH+tFrd9+Cvec5ZIm
	 Wm83IMRc+TDO/GHyYPm8oHeXMlMNGcgRU8X34NhkCx84qRcj1K63qkod+V4/eRyIhi
	 kQEk86PW1PqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35B6C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169210878866.1970.8806658632778306393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeff3b78cf2ac1039adb28f5ff187116eba61e6480abb0755d7b042ed5cd9e56
Date: Tue, 15 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692108788
