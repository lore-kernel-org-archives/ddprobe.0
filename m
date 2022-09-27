Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4024A0E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A667C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664302853;
	bh=alcvif4NnqlBSvx8juiKRicNF35cg757w+wNJG6MIhw=;
	h=To:Subject:From:Date:From;
	b=jOdR05Oa7rTJva8dg5rUHiEdVcXIbk2daQugQT8uSUHtM2qj1jtuYKw7MhfimgQ5L
	 qSfRanu2u7aKKMyFMPVXxV7duEm8B2tm9pouLant9+Y4QdIfZITsyfrKv/bBoA9ObS
	 v+U133/NMVJ4sb2bVtg6WPLLxID12ciyDOGC/PKNNt5E+Qzldt5zboUbKR6FhJdU1J
	 v9pv7t2NEv9v7Ds70s0VzCJuCCWtn/Kr34fCRiP+BaI40Nu8ul6Yi+9kAdEVDi2un+
	 dI+F+bVdcoBp3UT5Xa8EogFFAtDXM+THxZaYWLE+KoH/gE48EqgsBSAaePBvgcv9wk
	 MHMHAkHK5p9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E68C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430285333.9539.14670480158629187877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30aa0614b6fa05c5236884a3b58974c164e4a8bd503d39af613658eb10fc2243
Date: Tue, 27 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664302853
