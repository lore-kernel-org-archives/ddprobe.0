Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA3B33E9
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D045EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677341705;
	bh=2ugNkT+bdGMEeZwkBw/IApWP3aUrJBoRJxFEfL/D5DE=;
	h=To:Subject:From:Date:From;
	b=XV+s0VQlVXfIqB0skabpxam6rlaKIX8v9hX1+z8WAGpDhfHsUNErCxrI/v+ZWiZ0I
	 +3auGAH66L/sZgvItSdQ6UMjD4h0msGiqXzu5ae7vdOSicUKAB5UXLZvNViCVAkZVb
	 /zVwfjJsOQmFvGn2G/ELOc+0tEcE74LeUAaTEyzlwmbkjGry0g8n0PcnGPLsPhTgwv
	 CkPgwI6AhM/SyfyraMcwdsIVB018wJZzDyEW5p6GdDKl5REj1gXPa82XPnUA0eziKZ
	 iYHlPoj12UxG1/6w5Zv+WaqD1NXE227JTCv6Wf0k5YLyV5knsQEExsU1xnDuFxFN7C
	 c4dc7z+Z3JFqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F29C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734170572.27930.11591726760398139039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e047a2b14185fc9abcbf771c18ac2b4eca500391550f903d3f21cf7ebe61d36
Date: Sat, 25 Feb 2023 16:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677341705
