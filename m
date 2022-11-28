Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FD5364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A68C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669608654;
	bh=3PEAws3akHbvN/cnPi/VKeJqyHCwv9ZKjJuvLLa8t3M=;
	h=To:Subject:From:Date:From;
	b=T5b7r/WKTQ6SYrYpYceMmPxMz5g3ZJE+50y5a6A2JYPU+49sYj2EbMSR9GZOmrqit
	 aumex/Ci1PqfSIVZs9iugOgXS37sd04e9fifNXCMkOwHvhKoM4PFGRnGXgPqWlVEpk
	 k+wHWu2f7dYl3LJVYPJqEOSNStvZEMIDnEs21agXweJ7JZwN+SV17XbyS3MNp3mzZ7
	 Kx8gzzDU+jIShW67EeKqyqJPIyZOmgI/kAbFpLcv065AESvG+S4IRJfBsDKIfxztkx
	 4pnsR9pxEsBT32zH5eGXm3rlnV92u0wlM6OXRPHuNh3F3EzSgAW7xAap5LhwfnXIl/
	 BOBZ8lyBdwuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E10C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960865434.7667.8411664576913643309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd4054e0f18ca514e78fc705c58abbef86f777c7050adc67500498ac3c129b0
Date: Mon, 28 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669608654
