Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085121A705
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNesmIww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783AFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702636096;
	bh=cLm2gUTKmoXUDkWZ1NCjU6eCb0PyOspGDCMyBahkxVY=;
	h=To:Subject:From:Date:From;
	b=QNesmIww2AFS9F6yeS2hE/9CqYqYCrO8/s2XCm/SSrM4ZazmUO2vJmAuEEtglYFmM
	 1Jepb4l7HXma3+ft9JF3uHzD1Vu2EED14vn2rvPtaecj8XmOXjtKdzNcLGDgoEo8h4
	 SuXLrh87gdnAa/iDeji1IMT5F/SnzV8odB0SB1RPBkBQJUME9S7V87s/qN9/Vp5js/
	 FAGr9dXWX5f6ctk4o1UW97XYKEGKX7O710ZzoA2kVoPX4fvfLqijFD/Hfeby9/iJHy
	 vdPbF5PHz22vM6FY6+t6WQEzjt9NdvjbTGB7VLzv+emEiWi+Sub6XsQUt44NU9ZRVj
	 BqQK3r77YI9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62777C4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170263609637.2247.6123613769649059106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80ff27645718781050fadb149c01adda7ff071ae22c764ad211d007cfc42c98
Date: Fri, 15 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702636096
