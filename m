Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA75B7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B4FC433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666317653;
	bh=/Z4hJPnAZwZxbqo/yhQ8UPEacH89eBnO3iAXYzTjLgM=;
	h=To:Subject:From:Date:From;
	b=o4y5v+gTdgjB2eLYq9h8z3kqfGJX9mv9fSODdmuu775gMgqrpCwE42MfImxl+BFRf
	 q2BFUFObyuWUGX8Iq++Q3kg0QIb4fWfKNVSAWx78q1AjTLxM1tBHY3GF9kNMzCxH1u
	 VsSA7J3igSusJ/5CCFF4xxjnNSy1b/ethW6eg8WyFY/F8dpcPqPgZZGB8jY2ryTACx
	 xUvxBsiES/nJzQprGM7xVuLAbRQRCpsPXpOBH6koCwfmVITxRx6fOt9cR61UiVe8up
	 2N4B996IAQ7d+mpp/00OPUD6PjRWyq9ts9/bysOg1E8s77PuKrQ0BpRrRP4m+zwFAU
	 XiylZT7P78RsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CFBC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631765332.29259.15286412729830248031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaca342d58a5b0957e65d923752a964870f7f2a64edf0bc99a7a97943bac8c0
Date: Fri, 21 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666317653
