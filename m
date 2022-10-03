Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85817C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65566C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664809253;
	bh=mcBm0/huhz6SgQyaS9xgf/Pi5JHmejamCZ3TyNXPS4A=;
	h=To:Subject:From:Date:From;
	b=ME5NfHAZmSEK9422fBzWcpI2qBgF4AZOu5a1NnXnXKwxeZhPUYooTVwjQFhhMtoce
	 zLnXyqHBbFLeTwTLV73EYS1u+7o+cMRyK0gTRicKCqXZ8njmRH5mW9NNm7/EBtW2In
	 Gkh81yiUr4XCgE3wSFcSzrmg55ThjTC+IbtbbZiZ/KeKmFdguEKnIXB2dH3/IfttgK
	 T7CkSznSkTkz3rt/XJ8rtH8wP5Qpg+plqUFKniWdnob1AeubMMh6Fsg+r5qlzbBslM
	 iLnaKCs1ZVWt6oGrSh3u63Gy4aWclXuAbmSjl42ypOVlVlykH9s+LvBPv3NqbudIWK
	 j996BjBc3Jj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F234C4332F
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166480925331.12630.17511004801529941922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5c7e7a49b54741699c3f5e96bebb7f34436cc05767538bf25c94d0771fbc2d
Date: Mon, 03 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664809253
