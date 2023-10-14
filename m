Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA525CBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4oOOzYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECCCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697290028;
	bh=jp56iwuRRuwBlg8iqsUbkCYXqa8sh9V39CCMXVPWxKE=;
	h=To:Subject:From:Date:From;
	b=C4oOOzYfT89dhxZOO5z2xlji+mvO5/QNkN8sIOSKjo+5rEulUInOvRP4yFq8wpKTj
	 suuY4WKCYaVvEpwh2pJkzHMGkN67yOVuL3/Z/esGjUUB6HlYuVLsMprFrTsGjRLgGz
	 Wd4hmQGnv+ATr6pnR66U4JkDZvW76gTsBAdU0AcMGzgt0Bpb4C9V3UADwfM1GTcoQc
	 Lv0dTuAenaNzP2LjpSvuUZ9lt77/RJPtUTgZwtijoOh8l8cyV2iYeLfYO/KUx1KmMZ
	 UF4DQv1/1tvEzSaHQytZXzWE5qgGyG/vWcdT8HTOY/wEadl7zKePbWJua18jkDMfSM
	 rs/UmXWdyamNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A24CDB474
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729002868.23846.4133196849979093248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda784e4c919f024681f12bb0b057289caad2156eb76484ec6c3e80530e56e2f
Date: Sat, 14 Oct 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697290028
