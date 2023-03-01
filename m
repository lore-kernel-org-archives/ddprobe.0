Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E4D7F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDABC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677632765;
	bh=5hb+dGrHMkG3+vcslWckiBPinXztYSed5paJ/vvvHaY=;
	h=To:Subject:From:Date:From;
	b=sJq90HPWj7sXOso2QLG1P80RRDYeQy+o2udP2XRWBglQemiMG3K6V96PIlizRTESh
	 8okEko+RcRmgrsfImj47H9gxJAormCIfspMP+h0ymMD9kpJJHH8UmYVM/eamTuFqYX
	 4vwoflsRxrjC2hJbLZF+beurEi9I8GP/98bwQQv8wolXKRwWBqpp20BH30FRngBAkn
	 6OnpaJNsaeTS3X+kkXWQMhrVRAYFL1SNExrJYfneqzmbpDodS4KJMpfKmkHYF165ee
	 4/auzJezg5p1oamPe07XVxd0at80Ez5iT1zf7Qr38v+ndlfkMwbmgNUzjFKDCIvAFz
	 uqI0f+h2/9fAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C361FC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763276578.399.14066140188303843404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320a28f7ceb8e0cdb6a1b44b594d2b07f5365359b9e37d9065e8a66786deaa71
Date: Wed, 01 Mar 2023 01:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677632765
