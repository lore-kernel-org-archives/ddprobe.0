Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E35624
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVPWI55S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FABCC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704935296;
	bh=ekxt5TTz6SYqdoTkSA6R40rDHnbxdMjRuxKuP3ficKg=;
	h=To:Subject:From:Date:From;
	b=sVPWI55SKloRoNjELU0T14PpJX6Ps22rQj9EUHn1HvGwgfMngwAdG1CNivz72g7pQ
	 VR2E/FOXaLSncNcC6f2idYC0k5c1ye5Dy3QAYdwRzgf8J9x9m1a0AkjPE+UQ0b0qT4
	 i7cdPbehlX+KF9sgeYfy/Lfl9NRnyv7sqVB81G0Q6/l0KcxmU2mLqTh9IQe6/3kPBX
	 bt0AIEZR+VOXP23Z1nCt4voiW+7/CblGIGBKk9zKOX6vLobRYXUu1PBtRWcc6JyiCM
	 XoR9LOkaBUc2nQVUFpXCM+5RZqNoMMeA81rorQxQXX9IzVhB7eqCj7cLrmZTaCdYxX
	 BcUPTuDLmJi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63394C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170493529637.15873.13916429264965410584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba491d7b6c8bc4cf3ffe5b9f7a04fd0ac88a91245890aa1650b9c18e414a40c1
Date: Thu, 11 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704935296
