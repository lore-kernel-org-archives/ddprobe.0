Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC84D1370
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706D8C4314A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670402454;
	bh=6zli7it8miwZe16eVxa9JuewrT3sYj6DqtB3WDOCE3E=;
	h=To:Subject:From:Date:From;
	b=bblfu8uPgjIaCPbhc3b+RPi/ujMwtFp2OacgSCO9pDcKdIOHRQFs/pAyK0asRCKit
	 B6Q6pm1VCH5raczRQC5AUw9+++NzNx7PGLeBbB7haWO++7cdKFx/Pyzcw2dcHOO0YD
	 L6RdtfiE6iwRtYFFAluIxMG0j0VGUqz16zgLb1QArWdJAkoVY+FM/UENR5RkgqvpWW
	 xhzWPGfom0WcL4Z7Godp3ikuDJWDaP518r7XRGwUvU/b+xXHIaee2c72ZtfBaNViys
	 gHgi1KU12zksPMvcQhEl+LaJF8UR8DuqxI8pgVdD+wo/5Kh51D25JpMMJxyLUG9lAS
	 P5ytuh7m41r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A25C47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040245434.6765.9459869525439771682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e09475ffe5444c35f7008159efaccb03198aac157954d44f714fb9a78e75eba
Date: Wed, 07 Dec 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670402454
