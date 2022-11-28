Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9C0A486
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E86C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669666254;
	bh=vlOlY+G8jUOldKpGhjI3X/UQx3LJ6yjLut53S0KrOlI=;
	h=To:Subject:From:Date:From;
	b=rkuhFvu+ezq0S2FfQlNQyrBdUpK/f4HIkII9GbMvgbEj6/v/dRWOCuONk3z5rqP01
	 mxi8w4wsbJmgSiJq5iiuKP6kXLRUUdmc9c3qdzt8Kn3oPImYQDrPPVnL2Phel7DiCS
	 W4ye/NN/EGmqS1T0zEMFupl29eD/NoX1p9bn1HL0ElezfRBJZ1z9oT7AJ4P0gyLEQN
	 ATPwE0PQsB1H+OoUUO21j0+1Vaii/tV9TOgP4OTsTsnFlhg1ZZVRfzMkXU60sO9y2P
	 1uN4eUy16Q4EPd44l4L34YSKcakqrReyOMXWJM9ujZ0aCM+L5/HIUsPTFS7mPj5okP
	 2/oFDHWKiGDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF0AC4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966625431.19759.13512081403162153154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde59c03b3d3d9005e02bb7532a4883acadd812ab33ac13b377677aec0244a03
Date: Mon, 28 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669666254
