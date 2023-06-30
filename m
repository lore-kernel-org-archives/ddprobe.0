Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625D615AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C53C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688089988;
	bh=63Uz+3FsgmK0MEQ9dzTLSzmIK8dgw/BbnEIkyeZqUIk=;
	h=To:Subject:From:Date:From;
	b=aMPW04OlSVNCz4vajZ2W4+7z2fkDvl1VkrAg8ThBbX+gelBES+knTOQTtChjrmDs3
	 NoLjJSf85vlog3JNc4bfdFfk85p9Qsyj89FsaJme0/6feXDOmCKUISZqo/nRk0JQlK
	 7GtSa3mX/hHpy0FX2dcZTa5jLGqCLD1cSGxYvL3rvCgdfjhOw+KKLY2WKrkRLP7RJR
	 lpHVQ6+oU1q1ijgUoiX1O12YrMU5K4/5LU72vm3k+0Aa1dK+jgOFmZMlR0zLCH5uPD
	 PGIenUmq/n4bi2SdYXOV4Ze9cZDFZW6yp5bewrFJqrcy0k2OH3vBe6IuSwG9VQhLVX
	 /M8GjZshzWzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B4CEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808998873.8048.10207644776982472856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cb8ea5f1e2ff8b7faf658fa4d54f71dfd15fcb5c31ab414eaf16b6ddae533b
Date: Fri, 30 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688089988
