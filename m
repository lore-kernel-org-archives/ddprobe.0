Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7794E6ABF
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BC8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693224248;
	bh=mXQ+3WwbYAnfEh+7xY8v0si6C+zI7xJvPK4fTRro8DA=;
	h=To:Subject:From:Date:From;
	b=XFSTt1hVvTaL+oJ1utwE58fq2jHJ/7n8/ZY9UQlHK/DhcBusG/KohHXMBby19hdKc
	 AWQ0EKGggUeUExdvOmuj/bmzrphsTlbxOsr8sE+EjquZLhyQ8DxgASuyq8/Po/nJeI
	 fuvpPemUHESLXJTRJZAa5iWo2ONb4ojEqpcrN/iVN0EecNbN8/F3bKBVTyxD5Q/J3a
	 tMy7M1HhjYobCmMUWYtoOolSQ+N2mQU3Qbmpi9oBUe58CL9Thqb1x/g/J3Ue+M4rjQ
	 75CTTonyiOTWncyRj1iVPnnhWOp4NLynOr6wtpvM226Zpuq+tTOUbjaUttDcFgY1Ro
	 R2q4BfOzjLc8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13AC71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169322424868.15130.3547081916377805934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31bd626acf410969ed940afb9deac21d0d13d79822af39c67431053bc1b53a1
Date: Mon, 28 Aug 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693224248
