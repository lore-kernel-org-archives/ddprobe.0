Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE5436E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8613AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671934887;
	bh=pyiCYDkXXWmYspKa0J2HgENAhoGrfPx8dTOpagBa5Mk=;
	h=To:Subject:From:Date:From;
	b=p6dVR8eJwg/Kjkck3T1qo3wKIWxvtvXD5k1aYfEB2uU/ef6n4fjZZzM1lwa1YakXD
	 egbg9xAHyOJce5nVF4DIFHEYtFaKft8dAcCrf6F5lsyncbraHyzFC2DmX/risWVrKM
	 y/qIzBDerZxMTGGne2nN/WCwntvBl1QOstM8EY2GN8Ih/QR6zcgICd1W+Y9wnWHMrS
	 MSmJkMaue0liwR7LsoOffp5DhWsU9aAaE9e91I3n8ZhO7R0ekY+BZ4AcnvMfrwvPwZ
	 nEWDbh7LhvaEwuXBGfLF0GkPq5ZGvPrp23rfBpUN+ILoPFLzxYgWqt5QtTQBHL28m1
	 jR8YbuvUbf83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD95C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193488739.23433.2890106067711871231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabe9e235b5e8076f1e88729f4b1678b3c9c16ba0792db229ebd3ff49f5d5a01
Date: Sun, 25 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671934887
