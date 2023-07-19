Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD1912B6F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F14CCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689787929;
	bh=JEapMr1Ze8sD67M/yCGY8wUdXMi4YAz8TcSZKcu849Y=;
	h=To:Subject:From:Date:From;
	b=OiAnLFfjfGhF7bDDTiTehQmQiDOO/JTGYNbZ+mUuw97uBt1CP2JALu9m7A/3UOs/2
	 DnNPucUMLK11MUhDfCVpdfGeTI1sdNjyyxm8nlPW4QW2epFKDmDWWre4PL9CsTpVXx
	 5Cbl6VdlReblSkElIJXtl6SP4tuMcB9rorDgbLDnLuHjGMz+S0a0sah4OZ2KGaw3nq
	 EkaHvdbt5y74Mt/qrULDGReV107ph/WP67VaoWqycr9PvKkP9QtiqVsTH45S06eslI
	 P/YJiqRvXv6+cEdT1iySo2fgMFvaWSGG1LDwdhb70OpYtVmnlCU0f4ZQoH7p4zrzf/
	 Yqr+ikGzOkGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0286C001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 17:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168978792883.17789.12726071035666530800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93957930c982c34f42b000eacd05aa0a5d1d755e1e96bd11552a6180fd9837fb
Date: Wed, 19 Jul 2023 17:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689787928
