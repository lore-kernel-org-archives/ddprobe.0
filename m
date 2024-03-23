Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4C22C80
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711187897; cv=none; b=WGcFv2TxgxvhDq+PDTFprX3EGihleIwfUJ7gaYH8WuTD4CfjXdYox+BZM4bTlNIMdgUBNxqnNVG3xPxgdjnrqpqb3WM68npqjVMB9I+Bb4L2OjQeVCQjoUa0EJWSrWhDXX438V6ddx0EUy9D/7BTlzr/qnhJZXHvnBixYfgSHvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711187897; c=relaxed/simple;
	bh=Ko1oqF18svFTBJcDA6SqbfoZvCaY12Ws6aMX6RkwS9o=;
	h=To:Subject:From:Message-Id:Date; b=qs+9f4nNpZvebB5bshRjxKSdQRAuQILfL1ip+hI1Gx/CMcuMv3hbsPiU5VDBoQ34XiMjO8Wjb+UxCZPBFIMr79KByuT+3PKphIRBzyDswxer2u0WyQHQFrh+QLO/nzAQeFJo/r3RRuDybj7zeinfQkkEO+SLQoQWoD2pM7Pvr6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdFdhvLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdFdhvLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89AE0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711187896;
	bh=Ko1oqF18svFTBJcDA6SqbfoZvCaY12Ws6aMX6RkwS9o=;
	h=To:Subject:From:Date:From;
	b=PdFdhvLhuh2TkwWg8kfgz+T9mQn9IqsypT2crrrjYI83VJ67+wmTwiolpJfoz9YoM
	 C3dJi+Ipv6DffyvBVctOgyv3z2n/8synrvB9byV749dGI6iZy8Gp4xLOQJ43LhT5VA
	 Y9fZfAZlpP/pjeIfwv17C6LZww1qyoQ4BcOhzMJZ94/PrkhAA4ZAA1GMYktDlNrm7h
	 NhSe+wbr8jNfFgXOxPRCRTdxXhiQDXYbD9tqpeR1XbiPrFoUkyCF3mBTuuxTAU6GxV
	 zBsLxweyxX1Z+SYknwNaDM/p8q2tU7QhCx/AhSaEFp4qz7hRShBrRtq49Dai9SR3Fc
	 5BS/ANEh2hXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECBDC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171118789643.27902.5962751484281198236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe4c89cb7c3e35c17714cda5aefa15092ca8cdd17ca551f2a026c614e42f981
Date: Sat, 23 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711187896
