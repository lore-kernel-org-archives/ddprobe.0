Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74960AD5C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB598C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693779848;
	bh=KlvDmPdUyLXAaWesy4a7pi4Z+9oRgZBLz0yokLTmHDM=;
	h=To:Subject:From:Date:From;
	b=oD8FNOHUdlpCkc1CXmjH3xqm73qlXzYcH3LDcuzy3Bcto1WtAxX8RveIlFG0eDX5E
	 yq0/Zn9i5dQlBr9W78Ll5UAbjbNmRaXUU23GXi5szv8k+GOFLY9PJG9se4eIDRTV/5
	 GoKMMyq8HRA7JLRyuaT1MRMr7XFFX2029jiF3o/Gb+M+2jbG/HD40xotfEOB3GVBPS
	 f12lov6g0ndnT44eCSMpnt/6EGWlEW9sUYtK1h5/A1XJxibsOsOGc1YTv+0xP3SuND
	 0ZKEi2Vl4+JyUr6RTxtFSFTs1/nbZzQWuu86NUzpCAb+4ArUWVKnTyRiQ36DV18am8
	 l9ATuuBwO9yrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FEC71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169377984867.24458.1581190133435091806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0670b7efae33a7b2ed17e9fad70c4bbfd32f79b4b03a29344f4112bfe1b662
Date: Sun, 03 Sep 2023 22:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693779848
