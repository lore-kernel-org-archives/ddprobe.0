Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0F6EA1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74172C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667615454;
	bh=H8hxslWrW4NWkWBtyvedcprHxtJVtvABPw8R2KCwAVg=;
	h=To:Subject:From:Date:From;
	b=qePAAy1PZNcFZN59cl+6gp7/aMP9xkhQYgY7OzOFvsUNx7nfQcyvGonHmWhTmK47r
	 4dcnvrj7QmHezAFsvdpgY7ytuhY0ECXjtBRoEt/9jhegobDcDdMsRkgK/agl1678cQ
	 ah3/mufVdNgTbzKTW4Bl7PCJNffs98QDizsjDuqrfGrlvNDrC5rQ949rUrpHtV0G2X
	 WIRwWCXJh2ugVDwKBHCTPBS1FngItMfdevusXYFBDZimVLiyqZ8zR1J2CniQ5HB5Ru
	 mmyM43m0FMOME7HlGi4SwpxzTwMWE4+nI8I6NFFh5glksrvyZu1bZM/k7gfh9lVCcf
	 gx9Ketzefcl7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555ACC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761545434.27455.17312219505709364751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8fe8df5b5f812ff7ca89fd3a1fd7a9b9e8d8f5d9ac18d15589d5f4cffe3b31
Date: Sat, 05 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667615454
