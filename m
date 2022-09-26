Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB05626
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F53C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664178053;
	bh=2sn0g7TzZOisgGhfhVfAVTdhcMJoET6i/6B6CjEtQfQ=;
	h=To:Subject:From:Date:From;
	b=Ab4gADX+TF0hNCs/LZal4j0O+6wpmtOFz9KF3Fumrp/zSCgs+Ma/k055dsTr0t5Kn
	 7r+qF28wxcyuPocOXE/3UFEeBrp0BZfxKEmfb/CHebrmrj4lAGBldFSsaqpAKNyz0M
	 zCLn7QlaAAM+hYDPg+RB2v9m4x55caEkECqEkADN/2VKY2tN4HCzB1Jz/jxAZoXu63
	 Ecp5rEHCuHpg//tyH+D+PVRWwUq2HevGv5e+qVFzaqpM6ea0R+x02JBDZJT3QNLWAJ
	 IDFMBGQueVkfRwlImr0aiVttYCN+OM1miIo0oT+N5METGNXiZ6zlt3sS/OnG+Noeib
	 Bk8wkHMZ+X6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC53C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417805331.28126.7777613246010420062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4830f3320274fec07d3e3cf096952d56e2d4808ded2f840898d1aa97508f39
Date: Mon, 26 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664178053
