Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C247F2568
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69785C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670092254;
	bh=tAxaPmdips4dPg+H8Ir57QBHlV8dyFA7qwpIJKBH164=;
	h=To:Subject:From:Date:From;
	b=FdaPumpLIUQoNk0vBJ5n01HYt5EfaNz2XpC+2oT71y62iDdNgzIUQGpQgy+Ps2JXC
	 gU/P5/Q2h+TYEUmW/yFrP0EdxI1vrJ41DDNTBsizqU8jvySnt+gZ3D70o8nqPYHySu
	 mATlBja5clEEuMKfONEDR7H8868qj+4hjjzBQ2QzwLf1tVJG9JB8+VQBeNTq/sOEb5
	 vFnKZTHblKsscTMgF3528vVU7zq+ENsyRjZsXt8v5pNjEsbBv+aPMQ5c6qyzL3heG6
	 HEpNlSwBU9pSMOQ2+HDuydgK/j9aGAYZf7qd3G4/QOSfFUJcnyg/KJ250xr8/TZEP1
	 ASwIv16KaWR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECF0C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009225431.21167.18058237271462112735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920886a4adf1489cc035e42f99eb26726c102d4b544454722de69cc439f11724
Date: Sat, 03 Dec 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670092254
