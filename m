Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA6EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63F2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676943545;
	bh=AcpsdjMGiV/DNXd2Gp6SIx6caljNxSeiJ7NWnwMDxN8=;
	h=To:Subject:From:Date:From;
	b=Dw9H6fWjZWNx86qrDQWjmEtxVj9xv2vkNbxF2Wjx93HrcsLb89x5HJWiHtVFbisrJ
	 Cb6Hia1A9NGWNahXZvRHfYo49Vz/P2av9+zRH9BVvQfPqZ/Ek6qGUcxphmWQyHb4Kv
	 0Cw6BnCtxiVb9PAhlEni9qkcMJ4QLekxBO5s3NFSoEui9PBCi1uNR3CZFTa8toKTnN
	 uHfJgpF/f5ppCCNquyG1ssS68YZu8yWHOoSKEq8uON9y4lebxMRxLdLsXM+JnXFvMa
	 ZTdhsFctu0OLVCMP5OFlTnhbTXHRLuKknopxwNSaFOH/Mb7HuFTTUmVhRADfB5VG4f
	 EylH99mFNSReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C837DC64EC4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 01:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167694354581.19996.10975205977969298726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cab6653ea58cc667f19aa53988d5ea4227002e299287bd3e2391cf7106d4be
Date: Tue, 21 Feb 2023 01:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676943545
