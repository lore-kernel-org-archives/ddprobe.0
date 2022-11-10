Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95C1A490
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B30C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668094854;
	bh=MpUQCTFpGESbKX7h7KSKBO9XDWH+A9yGRnRm6t2D24E=;
	h=To:Subject:From:Date:From;
	b=lws8EHWaTVogPKlg+1aheMHWL792BRSu7xI3Jk87ltDgrZBualIK2raStL6PZtmae
	 FarEzwJgcscllp/UDvXCA6984l1pyPQBd/+W+0Gxk0jTlDdYzc5XIMNWlsyl3bjXCA
	 hneuavaILJ+bvoju28jnZCBNtxDeO/5vMWELTLa8aVKqFwfkg4/FV3WkiKr/Ajouqa
	 xK1PY+FjWpaqmBgA2EF/ILSgxIflsUke0+qbHDNjIvy4vSbQ8uSSWZFwB/hAzHltkk
	 rjEhvGyRTq2eKF9o4HQ3lRnPJGCSba5fi2V96ju2yg55+Ocg/ptqmGrZ50/HdQFm6A
	 CVTIbRYREGiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EDBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809485439.23019.4181463944044140573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ca2e74a7aae43204004ee2496a9e5f78b71c59a13967371929a7db55e2e776
Date: Thu, 10 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668094854
