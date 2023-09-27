Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA217491
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 03:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E1CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 03:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695786908;
	bh=2xzj5w4458yrLrKeSqp64SnUqUEaJf5O3K+fmJaCNw4=;
	h=To:Subject:From:Date:From;
	b=J0EqFyvUgsc4dnRrvoPgECGqAxlAI0WIQzjUiXFlsl29d12SAwRnZjhXzdAMStBpF
	 cmA/lnORxciumJAMO362m+WR/jbfGgueDaAVVr59OKAr2mhLDqudaBB91Z95/W/R8P
	 Ay8fm0hA8Hh/q0ePlA0dyLuiwH7xJVuVRlUZo+XT+5O3vHap4U6UBGet86E2Svx+BD
	 N0xwb0REJ5/DEVK4m0WUnm3qrT/1ruiG49cNZDokLvF3as9+kzMGkQNYgJRXIhwNZv
	 FRXhpNghNEAyj9sgMYO/p9OT1cecKuN299w6AustHB+FAQvexw3X6XcsDZJUqaAYbn
	 B73Geg0cgigoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE03E7F15E
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 03:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169578690869.32064.12295893926427957228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2fc2c282f46c7f8c67edd1132dd0fc1a9e8230574c4fbc9773f5a1aaafda76
Date: Wed, 27 Sep 2023 03:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695786908
