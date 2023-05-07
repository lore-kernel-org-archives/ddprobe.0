Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D64A2598
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF354C433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683497286;
	bh=Yrs5gVcDKJ2gxFAFrdchu2OrmotCpXPvtddW34/ipmk=;
	h=To:Subject:From:Date:From;
	b=fG/DFJTeJCSmDl9FciCgrEuiOllgyMk3RJLJOS2y//MmaVY9Exp+1K0fS7d02luJt
	 UOM83YJmp7eR+nku4+r+h0YLicRODkAWUHxrDkqPlIuiaZU3yfffTVS0UDHUQvhibl
	 utPVErfTtgORpwab9l7/jeKonsUElbFJLeJhJFWgvLVCotk46GRhLyasEZhYL+pUYN
	 4RSCpwLFh+RmrEASXGCbE8/3dxLYl+duh848vIirFLGFRIjIYwSKH7yioufulBQ51Y
	 0e5qCnDXBx9t2LLdKXrgzZMt53bfeFieVWTFmrHNQH172P1ZQlcjjRGWnwGi2VWfn2
	 OcVHtbdzNWXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF591C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168349728580.22107.15297545082139841530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a216b22a5e3394d5a1bccc15befea88d0e1b263dc861aaa76dcac2201a326b5d
Date: Sun, 07 May 2023 22:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683497285
