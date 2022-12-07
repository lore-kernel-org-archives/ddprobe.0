Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B760520F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC7FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670409654;
	bh=Cs+VxIWt6ZNjM+Z45HJI3Eswa188mK2LHwC2cmzjrpg=;
	h=To:Subject:From:Date:From;
	b=tHHH62P9HxKLtL4rKzDT0TLmO5gj01XSdCgMdZ26MA0tI1hr/6FK/c4LtCMb4j4KQ
	 zMUYBis9ZQ8Kt9PXEUoewCa0+utkoVcX1+vZt4RGSSsxPc0JnJQ+mAeuVXyRMKubpX
	 RwqZWQSEcawEnfBAHWCGCXokqDYS5gy37g4ZHzJWXyBk9AvktdBtlgfPlmJ/YuPsYz
	 6QidDy4bzsUdMdGbF68G5DZLmE4Uv17uaIGFMx6NklzMuwA35mpLUQ55tnAzUeB22e
	 nq6Q4qRG/xceWPYq/dmVT+haz6X7MOLsdBoxrzu6wetBPgfWPKVmZwAbDDDeOAwcAo
	 8/kToa7nfPXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53404C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040965433.31236.6688057668258724299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc80e76944528b6740b530ac91ab52b23a90cfe8096af996e99dbdd145375d3a
Date: Wed, 07 Dec 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670409654
