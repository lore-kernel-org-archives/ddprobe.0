Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B757B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E48C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672040487;
	bh=PQQNSkihYB8kG+K+QtnQHSeIsTkTLiy7ohhpyHeUgvQ=;
	h=To:Subject:From:Date:From;
	b=d/61+q882MuENoWj5ipCBdp5TD+QV0EGS1hiLufVnj4kxN9wvPpxATyemnKE3gFzj
	 TNgcWkgVejHIPiboBT3TM336hLx1R75yJ/1m5FNiHsC8HBA2qZtxE4US+cVNUZP6Rf
	 toOt7ZKmTL2bBPVdZlOYjeyBO2/ms0k04CKV8mWrueOveGjPmW274cLQUlzSY4yvQZ
	 L0s+AOx4Ya/SCfzZNt6xdfu45DngULzzASfCjztXRiICDrTgt1deU9fzPb50YSdXDv
	 3W976ZVA+J2vYckWjKCavgwGMOWWBmg5vOBI//Wmi/1n2DLQAZ2JoiLtIrq8Zhw2In
	 PDYWFT9kHtarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F90C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204048740.7973.9719952047054607936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4fe9929cffe07ec7bfb3a40fe209154cc133760fa68a49f86e0d4fdd9e594c
Date: Mon, 26 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672040487
