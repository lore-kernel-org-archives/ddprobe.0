Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E041878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 975A6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671558087;
	bh=BHSRK28eUYloYWBBcCdekJ0XtL3FuzmubTI7uQotkqM=;
	h=To:Subject:From:Date:From;
	b=DjyvCy9kpleXQxIy6w/fGnuQILIkGfqF9J2Oy5ZlxRsF8l2YxzbSUJ2TzloRvGxJP
	 /JJMIWS0rzgmsuCRYeKFkEss7P47JDYeu7x0khaNdATFNQwRx6IAdWxHgBCEf9m3RP
	 CEYbS5vO9SkWZvktqshV5KjGIbIpXvBnO4DtAD34iCeV2VKDia0hlRNr2lyq08qXDQ
	 i8U1Prco+IFD4EbS0WR7z2t9+zecZVRVR4CG/N9ssOZFZc50OwEySWYhEOJY8AEmeH
	 hQ5+SthfZlv8BoyTUQF7hfga058tS3f8iOEWgwI8eJ5WQY6myEkQMwjy2fc34HuKDs
	 LBtpyLa/n6N7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 799E7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155808748.15812.10127385403210560611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10db5a36a52458426d878e6b489c6013f120b7792b22c103ea988d3204823b17
Date: Tue, 20 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671558087
