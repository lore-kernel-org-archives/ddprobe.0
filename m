Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B42B1C682
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPlH2H4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8157BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699880896;
	bh=Gqv+NUGsxJiEBwGz/63x4hY2WWy83nR36u2ORCMySCs=;
	h=To:Subject:From:Date:From;
	b=jPlH2H4Onyt/wyJhHsy4gH49ooh7hznu2LBnjnJ+Rg8RucMW2NZ+34zLusGtlxpPc
	 S8EXVlehSgaBfaxKpn0TUf9lKvNJJFMEIV3OPAXyYJXmyajb0QLewvOzw/Z+z9L0ce
	 wQ4PBgO58EGmVSpOK6FOzbIu+IATU5TiepxnVcQp+hgpjEcjkRDz09XadxqWyqn4AG
	 xECXW9v8WhgwRKAtNiLNz5qO4m7p85jumulFQInimDaXIXIdsmR0Eudad0F6NQOn6y
	 RPukATk1YYJy2PtkEdKvRHim1GwN0YYxxkG/5enA3H7H2aUlfOMZHjd3i+vAroCacP
	 F7PGDaBNZyrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669F2C4167B
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169988089641.20008.15493526920190239486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05e0c98f5bad14ced5eabda7415bcaf17a3e91178a09531a409c228e3ef982d
Date: Mon, 13 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699880896
