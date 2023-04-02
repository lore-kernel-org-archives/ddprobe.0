Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E56442D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C75C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680450905;
	bh=r9ie6N3CsIpoUH8d+A3sFMwzkkLifqNnY6GqIKfGhr4=;
	h=To:Subject:From:Date:From;
	b=e03Q4gl5uUwnMaIxBK6v6u0YrN7v5zYIRsaN2Wt/Rmwnbp9NluXJN9ENSO3tGfj3H
	 upiMRA6zkPLzpI2U7ls0sMoFGnSwlgpLKFsiardKxUlTowMg/Ty+ZpXj7EgKds1GoQ
	 CwKpjJuxkFS9cTXa4WgqxGlAfXbpEkXTLBl93EGGlBj3fMRvtyoYfdqJmd/CU03JXL
	 PEGKnKUJ9LsMpLxJmR3AOskw1T31wJ09rtX3V/4Wvls6wwlg3CqzzWefLW+Wvuyj7h
	 dgGX0JCnqt75Rv3sIUT5iIu4jc+cH0YR82NMFthcKi1goFnC2K0/RI34sw6sfCoXji
	 4CY+zwzMcOoSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEA0C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 15:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045090575.3997.14569413345080532322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0674952cd8bf62a9fb739ebb449312f669fcd8e5b8c95683f24a4ddc30306099
Date: Sun, 02 Apr 2023 15:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680450905
