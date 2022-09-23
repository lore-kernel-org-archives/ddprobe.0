Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70D7441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB76C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663961453;
	bh=51Ecsb75tGDZzxv7vi54yZAv58H64AG9AeuJL/QED3U=;
	h=To:Subject:From:Date:From;
	b=hufu5hRILIJSoGewgreF+P0VRsHh1CMug4OmNRii6aN2omQhMy9vNexGUoZeKUyy/
	 6k5oNTW/UtqS6nKflUJIIeS+tUz7At9AFIM/MTy/XuCu/j+vOzx6BThu7Ui4bSPgMn
	 zE54gO0Nb6AFp8D7ilhFNFGozXUsBxmNGAwgkC2eSEKuq771AAzaEzsqPn9Fz/TjW5
	 q0nuwzBhkzSO+cNv7m+7khSDZrlMRkaJqlUnJ6l5m8k6lqcLWlD6GOtYDGk9YqJ6NF
	 RqquHiNRwbm0R7LSzrk6sGdWwgBI1pR2O2JOUJh7JV0J0nFXmrp7ukxJpRLb7gto+l
	 itGlviYGaxGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E918C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396145331.29138.17906739689082429595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b8edad47424552382493b0d2b36e20c8b28fcb25d6668f3aaa6b967ef9749e
Date: Fri, 23 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663961453
