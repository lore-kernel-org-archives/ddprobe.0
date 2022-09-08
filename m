Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8433D65
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762E5C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662653453;
	bh=3guauvAk8dPCa3loANKFBqpt9qVzjPLyQTMDkL0Uq1E=;
	h=To:Subject:From:Date:From;
	b=RChDXzpVYLe28ixpFd7Ih0tN2FQWNgLoqHkQ02E5pjpF/IHTSVBNP9/7lybsJJ5rm
	 rs2TM1xpD9qB3AG+qRQ+9Mom7fuGUU2436HXrFP8RvvMuNS7jSXPheZNqPVuXXc8rv
	 89nGPCN40xfg+rWk0LnRmfIcsSrLpPSoIEjWV/iyoLXFCIyatYJ6g88JFlHf3hou1B
	 1s73ywgK0kMX0wPrWKcLYHEbcIOUh79cReegQvs5WRFgMoF1zdPq4ueTGKZ2Z8NeKr
	 P0otGuOERn56bqePaaSMKkOwOmmpevDoS8XMG50oFg9pBtu0NJ9NVOVMVwIAkoBpta
	 5TthpY+x4tHBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5832BC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265345334.25881.7623963139883667940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c4fe76af9f7bb397c2f564c2194b39da4a02fea87a39e50261e2a09b36d458
Date: Thu, 08 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662653453
