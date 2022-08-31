Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD43C4C61
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791EEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661975453;
	bh=AKC+W2eDTIUS9gMgJ/1WTcVPNyhkkkj0WpvO8K/E9AM=;
	h=To:Subject:From:Date:From;
	b=LWArbjY/WvX/Fr1VmZhsrNn5o4XupGcnYCa1XdZ47twvz+8xxYoCW6UtkM4das0JA
	 xHh2s1S51zBZj/aOWa1o2ENE1Iat6RJtDMazd7+lAuNzGC20ws/VVJMrxxuYbphGGE
	 GjJ1IuAaiAfv99g0c8ZKgl8IlbRBbfmba4Xw0Wk47VeJj3vrkQH4/76bybBN7l4oBy
	 bjNPM4NFKDLkw6K7K93zVzWNfQRBt2aLljBaz3ihS6iSNZ2S5pMNkLTsIWdsh+kPGU
	 KusSelDcArG8Cn0ayZtMCNJV/CKUwVETnF8F67ocvQDNxkGcPa3HTnlPXICvAUv/NZ
	 H4e0WbWn//8OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60964ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197545337.27903.2311841853773873455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7875c3dde460cda27377b77c1ba739064bacdd98055d908cbee6e7f6c375ab
Date: Wed, 31 Aug 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661975453
