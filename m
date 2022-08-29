Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A99198
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77367C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661733052;
	bh=9V9RA/gP5CthGQ3tnb2J2isKc4kuN8BXFW0VhNXe7g8=;
	h=To:Subject:From:Date:From;
	b=YokLPn3QMa/lFuadfKiTUxOKvbuZn5UJGe6/sIQS2HpX5S1Lr5WhJRt2AYFODHlLe
	 kLwRuTLXi86pvlvgam7+jWi9NFEdvRgcsfLJ7fj/LMHDiT0+yFWcb67auqNcU2JS83
	 YPY4TxrVKV++ImIDUX8BGO+EjgOk9TdTaANdmeDdvW5Z2nK367Az8RKcG1PHqmYF9o
	 JgyWf79E3HfINlHPXQKqpk3iUe4SWM8iIhxLd0Pn99iIoSug3yS87XcdAOHvMnCPm+
	 nbEPBFRQdy9I0Zwxij2ccIW8joaU0VRQGEUIoual1MpYjnKH4DAvlPTAnKULLktW8e
	 cn/l04zSnyMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B159ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173305236.25315.7415836148980947929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a14c6272e164a74c5b45103e576175e7c1e44c5fc90e461fc3c35b6ba0af5a
Date: Mon, 29 Aug 2022 00:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661733052
