Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36607F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6951CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662957053;
	bh=7sjHuplHas7un2hD9sVReIKM4flxYwCmugPmFjfkxaY=;
	h=To:Subject:From:Date:From;
	b=II05LDscsC5CUZk9nRmIDi7t9OmSzxmEtcQRfFsildmrucrA2yzMSxFDKlttNtbP5
	 En3xcPbLvRZaa38ZECpmQA7xdtGMvbybq+E2QzBHB86fLwJPKFvNWU5nAZyjpf6E04
	 SgNrq/Ls128U2kaPK6JWTQNyiD3EQ/6q/Uc/dVFARua6R7rTv4sNxWdBUtLWM8tfLN
	 VurcAb0i07bmOMHTn7CVhBV5tJuRCTyZ/HNBAZEyB/qegB4mUHqbLZJsewH3OO881+
	 fD7VAjUG8DBFfqr9B6fJTRjO5XaJMV9UcEt1GmeUV+DU7Sr0Yws8VDyQwectzhzBU3
	 wHX/nlv4gt/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEA2ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295705332.8863.8097211628353069728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ceaec7bef16c9fd74bb3e0dbdcd33b36f40d3246d8d3adc248ac072fb27649e
Date: Mon, 12 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662957053
