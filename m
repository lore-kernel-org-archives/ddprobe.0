Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D94198
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A229C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663288853;
	bh=pDJTDQLIIyTO3uj5A4uKE+n7oADGnNKm3BbhB5YBiZg=;
	h=To:Subject:From:Date:From;
	b=lw+LqI1cEO++SkPKw8US7/D+VbDkX/zdzK/wxVAACw0bEX0XC9O6bvAvpTfTHCRtm
	 lBh8IMk2//lrDSXPLCbJ9504a4HHbghnU07IMfLa5RFO50sA2rDkZnWzfSFxlusRAr
	 jauvdpoJOO27NP1TXO21EDdSt3srIoYQdVSogPBt9mRJTFnjAInfO+KNIN0Ho6u+Fy
	 Ctf11+tAwROkHYc++2XulN/g3r1UkqygelUsnl+aU0+7UPcb9btk5kZeqbOrjGAR72
	 1TqqcBsRBecNU/14iX+bezuuN5QZsSmbAGLXwvUjsYIF+pAkS3bgrfFI3R786UyEV/
	 UQHD+S7Qxy/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEEEECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328885331.9059.3533211889408163531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6829611b94477ef0abdeb1a5ce993f7602dbe1520b01b9905efda0214cf1cbf8
Date: Fri, 16 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663288853
