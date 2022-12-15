Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A23B2F3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99275C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671105687;
	bh=vyldab9vRm012GuNTI+uF06fy0LqHyXqAMbAWqVwlB0=;
	h=To:Subject:From:Date:From;
	b=QCn4377BfGZYPJgrlbawtsMbWyRaj0oCBHN6STa/EUbgRx4wAKwm4ShWZ/OpbZLCK
	 d91UsmPeDPysyOdjCT2/Xf1VC52VoxKghtUVQzgH7t6gkMdhbI8g5yxetziOu15dV1
	 GHletOP93Wy8BCxI/csZVpL6LvZHsc5F124g9/bCqJxTySko8XEDajDlhkFKar82Aj
	 /aoJpTuvPOhbd/XRdXFeeyzMiE0lqxdZEYjX4Dp6ybjhLoibZwNl9C7IV2ITDvWnX0
	 2l3yK9PSe7d3T0cSNXc//ecGd7HuVYH2CrcRKXOaqTPMNQ6n3KgFEPISBZWfMij6uC
	 0PkggJJV1rtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80448C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110568751.2160.6307387829761182182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86140037941f0e893546f77ee6a8c10d7e12c3c037e56602a06fb0f52f6c434
Date: Thu, 15 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671105687
