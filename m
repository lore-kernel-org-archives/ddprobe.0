Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95FCEBFF
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8029FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668036054;
	bh=k8gOeaYU9DpwexD2QmvdFjX0Kk4LEj6j8bctcfo/xIU=;
	h=To:Subject:From:Date:From;
	b=FnFxEP4fH3TrrBl/0S4HOwqr7IuobaXm3iYXv/Jq85LTDpVexVMIDr9mU9pLDnuuI
	 caAVbhp8N74PSdT1sXRueNxOjqWa0/8af/r/UHHx5m3klI+AHYFxURLki5eoeTq8wy
	 8ph1t0Zxwxedo86/VZsiIViqiKiSBXLcfGnKHISexO+19Dn2sF8vaSg+RFH1ZbzxFp
	 //ZRUCT3IZWJNRLHOsU32Y4u0kpTaGJ+Q05oiVUudYyIDo4Y+Cor/5CoJcrWmoiA0v
	 TQUZoTlzU9KM+SWXNJCgZemlJYiGbVITAtot8jF7wVrjl8AI0oRfRFddta0pkd/Xpt
	 vRKFzUYxUSoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF7DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803605437.2747.16245473619348535798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12f815dde0f4160ca6349e9c564976f17679084c30c4de40c717ac18f958d38
Date: Wed, 09 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668036054
