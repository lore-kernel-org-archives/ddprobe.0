Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CF7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 11:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1967C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 11:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678535706;
	bh=J9fpQgrBAmbwn40qP7j2ObkEjDPPBmBOXG2mM8gv0Fg=;
	h=To:Subject:From:Date:From;
	b=U58eQ5JqUf3zyF8E9EnLkPzJI8mPMH75cs0eHZZbC4Poa28bIyrgpAezb/YKAQ25e
	 JPQHKtp1DrUFAzmbTF6RMuhk7BpfrrzCkx9g2ZxDvoCGFHrT3ARxj8LbOkxO3++jzp
	 5bH4vCpxuCCSROyb7l5IJVw+CqGkIBVIrf6hQJrypZxFbzM7Iz8yesfh+fGpXIz8sP
	 yQjf/jYZ6EforBr+GUnkjfmfjaXlM3EcU8p/ZGMPFWWl3D3pMkvCQYaPJGYl0+9sRT
	 MkgUTSeYkStqG1TZlbKFErUmtIfXRH2L2HyK1/NbMkHVSDPLisyNykEke03KbOvN9U
	 cQCol0yyY0msw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6023C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 11:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167853570583.3670.16595712968921737511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1c1a0256455c76dc21df0a10e03d0362e5821e44787a6caf756ddaf0b4455e
Date: Sat, 11 Mar 2023 11:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678535705
