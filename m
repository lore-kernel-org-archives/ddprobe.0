Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CBD1DA56
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQtuk8pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74059C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702043896;
	bh=jKHHFD7935Z5hkw8I1tjVFLoVdviHOBB0tLnytmwfbo=;
	h=To:Subject:From:Date:From;
	b=tQtuk8ptE6BewOEqKe4lSk3d6oP1ELfyUXLzOYlSE9lBxc8F6e9TNU+i0vDu5Hd/S
	 V+X8UeQiFqKYit2Dn9PT4AXkeyZJoJOdYoF6eWnn7yyK+jHd5O4Mm6p3JPY8TfafXt
	 d2P05XitVWe1e2OqMYZkQ14q0b9Ja0P/iryMua6sn+HZPdJc/Ff/FXlQaKxs5pBOPc
	 nfRYYeb8Omm8hYvc+y5LXm4yqXuAgN1sghqO+/73tk2H52pvAERdWvUH4/54XjU0FK
	 HNzrc1Q3GtigZ/gFIfeWK6CjGN5d8gNXGneo4Vdol2GYY8fuiZexGsOgKvlkJ45s0K
	 D42WCDwaTZ7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3FBC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170204389637.10198.15304056793471266572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7d97013cb9a95be2b3121590df80d875c974e88e8d1b51634bdb24eb9ad335
Date: Fri, 08 Dec 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702043896
