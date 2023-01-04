Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49077EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D24C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672822287;
	bh=qgmjlup9g3Qq0fY5cLQSh01my0GCCxwGMBfP0A+w3Ew=;
	h=To:Subject:From:Date:From;
	b=hBROs44dTFjmDAnOReYhmp1OwoZJrTNEDLcYsZqWGGm/oxnJVcsvwqiBiCNSySaxG
	 CIm26buVxiubmefLI23GV8JiTEJCcEzJsgHkas8o9Y+4uZCd4ctUNOg9iMhq75hbOV
	 /cd+kIKj7zru2+9+02kNxquLmBkWeKfSVdviJ6EQ1Bx31QlyB7iv2rd1ga0wYbC/h+
	 sIdEYyxSWiqwTlfKYciLOLgrNWF3L81w6EAVknipFcbZYG9EeHjQjW95+VrCXTNgR5
	 nJ/rlBFLmVV7Rj91nQeZxztEVrZ1ifaflG8eS2EMnDSDb5RjKR/xovDii9+YTJoNLq
	 GSS4507QtYdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6229CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282228739.17737.4861742494178022217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74727e35a9fe984bf276e0938467ee8a2e0dbd3d062f602a4fa607bdcb740d7
Date: Wed, 04 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672822287
