Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEACD1365
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D6FC433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671583287;
	bh=FKXNQDoxWIZPayD8n4RBMVu7/4Jpma2jDvqeCwxfshI=;
	h=To:Subject:From:Date:From;
	b=KQj1ORRI/pcY3IGnRN3JI6vZ7JAxwsdAZOTJszhXzbNhHKH88X1/NNsd00sKSUNG9
	 CWBQMzJg1WE+9p1+JnznxLA7uUJehm+530TIW3osN3A/P23sjwSNKx9czJrrHdiyHw
	 bwupBghRp/bl+rJ3hwRdWuxPO4LN820rwzxYl8GwMwPxVo1rLdahAJvam9PtOqj+YM
	 i4X5MYwlcm1zX5MOgJp/IX+095flnO46PO6EH+bHcJ4mpIO4B4v/OZgWP1W5Gl/IVJ
	 2mU8vOm8YCnotQgza0rXx14FVBLB62/tb7rtn1Y/yOhH5Ns7w+4cn7g2O7RJeaUULq
	 +c/U9XS/r6FvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E23C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158328740.23706.2206703847444402108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e767ed83473060446a44786b9e5ceea3246640c64dcf337d92daf505588e5d
Date: Wed, 21 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671583287
