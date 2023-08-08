Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D67C37C
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7B9C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691506388;
	bh=00qA3fj5j2zyDR76ce4cL+FjHsG1kJEMnls6+RT8+Dg=;
	h=To:Subject:From:Date:From;
	b=OqVEtNgEUetEuOrT8uvLgwY3r1KRo/NrRRWCq+5SK77vprsg0XpgbSOdtZqwjAGrP
	 5NRCuOtygSpH/bsEU7yh1h8FusOqD+mlN8xXTJmlEVna4pyYCGScD0TrXdmjkuMBxW
	 YhW87WcY3nAA5uiJA1AFt///03im4qLsls+ypKo+KgMG6gsIfiVHGqDjqXJFWx9I0Q
	 NbSGPTAipcpx/woA/d0j6Rni7nWAYgGKnGdDU7Ql4Bbm3iJFxfVrMqNRXppU+fnPFG
	 oAurjEMjIjXKulZBPVX4KR+4w0yOD0lNPIXLO12QUK+P6M8s57OewPO3Cwlx7/PR5E
	 qni+cSp2WoIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF47C001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 14:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169150638868.1263.11268898292967089809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ffd1074b136f0a2ed1371d9554749b0cee016d369d6f5d8dc62e35bf494335
Date: Tue, 08 Aug 2023 14:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691506388
