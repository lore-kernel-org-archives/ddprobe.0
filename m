Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612FE250EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3ObdHgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F7DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696602428;
	bh=mYMOtPiSBrn7DJzCu/zCrcI9T+rP7VLUT+4beQMQ78E=;
	h=To:Subject:From:Date:From;
	b=Z3ObdHgZmWvSTaoeTbXnOwOzgz+M+2qIs7/5ovM3FtQb4R+Ozxbmc+VZtacQJvYDS
	 hBjnX5h93lRPOI0M50hH62u+PmN7sOkcG3BhYVs4rre6w0dzj49MmxLWVDu6sj0y8F
	 k5tLJz8yF7jnf2h9gzHs9CdGD0qP+QV2DD+qJ9Xn/iEFdhI6MpRQoR2CyjpUZ7/Vnk
	 id9YRCuXkzMer7ciIZ6imhUhIa47h95BkiEqNcAy4NiNmz40fIbAUaLf1VSsCsbfxJ
	 BVwBJb2tpyHsG78liRayOK1lX1Lm3Pu8dMhWAGES3NadN9pogDHlB23mfYoPoN1Xzg
	 YXEIxjlRnW2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AFEE81DFF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660242875.14445.6102748895375383225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32d9a4c2ce47790bc306a09886aef8d67d87b36e1a89d38a034027900a977b3
Date: Fri, 06 Oct 2023 14:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696602428
