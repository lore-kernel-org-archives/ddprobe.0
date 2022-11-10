Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62261E9F8
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC1FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668121254;
	bh=cCGAfQ94mmR8o/dJw3xGvJLiJfHImRqiWJ8bDrn3bb4=;
	h=To:Subject:From:Date:From;
	b=ca249N5DCFb8nx4zdAahrz5M8Q2Sd06pR41RNXNsQC1R+Vd/HoMCntfRCZHTJxOzy
	 ssJTYEfFpZtaRjZOfbZQNusfy0TMOfjNJ72HDxzQuAdz8OW8Uq+nt+gyXJ+ccrMBUz
	 KsYWJlj/0yWxq5PnngDuQmLHvXqCeJ1Yu0yVg9Sv7RvX07SHkb5XSUgJpkNGRWVeYd
	 R4SGhyGf0t6VAJ8UzDKLgyd11FG0+b8I1lr3Re7G6L0P+AgFSUJsYcEN9DNpiWHYfK
	 EcdZwvm71sZxuPP9oRb+ZY4/EUCv9h7bfrZpivdxWtFiMWgW7+YDAD07yFgEToltRy
	 bXdFYefiodC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5645DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812125434.10932.8010387170674985487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035a888d48f07916e0f401ce060ef807dde3f3049ba29c171869c745844ef440
Date: Thu, 10 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668121254
