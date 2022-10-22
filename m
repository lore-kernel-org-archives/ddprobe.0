Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13DA33DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76590C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666447853;
	bh=WwXvGZT91f02399iH9zETEgqT2eDKbAl5S1zBeiW+dc=;
	h=To:Subject:From:Date:From;
	b=XZsX9cjEEJYhF/WFFCjuhskqoQNe6V0WCpZCA0/XiiGYxm8vX5K/+UwT4V35cAKP5
	 pJAVnplYEhNKdLEyVR2Y7mR3510iVRRYKM1wxncrG2vog6r3OfyEGe0SxMV/WLqd//
	 WRII/mtU8YCTipdsHqGDqQwobRYra4TrONo8IUHNQX1Vc1fruBbqEmOv2MgoHqtmxh
	 dNknKV/afQ40H+xiDcdZ355xPBJlnVPtg95piU4bEkI2ZMjfGj5DpFHxcKJGyMknjG
	 aogmIRPDTfGeVDwN8S6DRQVZhnTsOwQHITJviYWt4vdcdsJavOdveA4Xun8TPwK3Y5
	 ravA/hLB+KemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A64DC04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644785333.31541.11960729075689267522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5149898f4bcb9556efda525a372ae11d351fc56f4c26207e5d266eba2c5f8631
Date: Sat, 22 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666447853
