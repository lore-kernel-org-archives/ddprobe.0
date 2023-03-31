Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429391FB1
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02C0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680246065;
	bh=9XuqWKqRMUP6bvLAoBolSbn/YNUq++gAL6rmfYPd1Bc=;
	h=To:Subject:From:Date:From;
	b=d51V0xRZpjA6qG9xhQ1sv32ij6z8yCb1jj8e1YO13wcen+Bf1Yuvk5Bj5DyKm+TVk
	 NOPdBDxMP2oWUOXvSHt6CPgJOthcwmVaFNfkOMizaX4oSd/cGNYimPFMrv0IVr74+L
	 PFN6sPtS45F5o1u1gEkU6xbpjntqKtWCDGbT17wHTRK8X2TyL2Zz342oDWg5SkL7Ql
	 Gj3fpCQh1f/6QU40Iu7oKzvabCDq2So1QdQiC2DdSKJGcO8/BVuUopwndB+ljmWHYS
	 Nx9asu2POtJrFmpAExAi5aTBRgSewa+2IDHpHnk7cDfMGJ1ynHwqN53fVku8XWudAj
	 OO/cvxzzmdlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5563C6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 07:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168024606579.790.13545867115088955251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241a8fa05fdf5a114ff3018c136d24c79750065946fde711136c744d9495d5b7
Date: Fri, 31 Mar 2023 07:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680246065
