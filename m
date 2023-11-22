Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E536D2554F
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsgPCXW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C34C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700685496;
	bh=Vb1LTMl0/kXBbV3W3Yjt1snGrmT/5m5W9aCObiwH4j4=;
	h=To:Subject:From:Date:From;
	b=GsgPCXW9rpiacA0kSCO8/QlTShrDlFBz+Ax7/2LO0X2gwj08iscrM0Tjhy+EeZZvp
	 ZPKugwjBl5X6pdU/BJ8WLoIIx87prggn41o7lsA30Xu56qnq7o/XxoadtTHgGna/dQ
	 IKbPWgEKnDK2RykI0H3bVhBGEdEwcl/Zifc0fVDEq39qEXJ2y4+yZXDVJSGL5o5u+D
	 OF22cNyVKfNbI7TT+eX4vzxmY1lXcejeMEYbavK63y54sGSucIkKHPYQOCXtirCkn2
	 BDwY2Rpn79F9KW6Exlg4wrYrGd+hSR3/Krb7bQl18h96ttc+GIAsbga4bh4tRd/sPg
	 MlBou6AwlrxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D91C27C40
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068549638.32576.3484721790716427355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9c97a578102a354769b7ce46261058d2482b12b392bffea6685e422183fcaa
Date: Wed, 22 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700685496
