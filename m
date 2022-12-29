Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EF31C06
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EF1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672305087;
	bh=qobhQN6uDa9gErrAbjMmS5ne8npeY9LertJcWFD6caI=;
	h=To:Subject:From:Date:From;
	b=oIkRX2x2ma24Ph41JgH4aa6h9O7naANpJsEhLCs3Lbm43NJox6004rYPTM43wSRYB
	 /GAYziCNuUjKYXwBRms2VXyGFWad14pFaZlacE+Rn7FnivoeSGp8RpH8ngjKwdOsXG
	 64+S1gNiQUWDdYgv/BJG2+WGMvfffpr0z9sukIAvBDzKj83X31TiDD9jHJC85/BCEo
	 sVbr7/m+DEYhpL1sTKQku23KpQ3MRNUCy0h0jsaymvEeBoG0/uLBZ/QTB/uKwld4TL
	 RMzE9gjTtQhp419TR4R2deJmw0t+U2/dSyX5ceGBCPjxhyy14RvmUXt3VMzuIOHmIc
	 H5Tea9aJlCbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E36C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230508740.20038.1175536579830484243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daae05b1864e20439594d0d29b9edbd0e448e8c51314a9d684c12f6c67905bd8
Date: Thu, 29 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672305087
