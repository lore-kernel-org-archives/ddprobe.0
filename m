Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B5028F2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6712C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681897445;
	bh=kRKI8Tow5QZGFDCysL4QsS7QycCrrWb+fPPfPq21NlE=;
	h=To:Subject:From:Date:From;
	b=n1oPwT9ZwdtkLZc4mjXJHRy1YsUq70qdcw60sQHsjFA1GRRlGtE5+WA6Y3IcXLcL/
	 1uKDojyy8Ba1exrAVL7xP6mVhUOqT25lsmARHVcg33B5XQuN59PFpHGjptDu/zLB5w
	 tkdGiTFctcklEQm6030kPGri5rA42G7l41OtXvhGRXQeF6I9lDFh1Xm2ZSjyXub0Vk
	 EXzN8bRTfPQxloxB/eHYxvcq3bZxU03NXAEZOFY9qW695zU/qBTZSLcfJWYYfTIv6D
	 6BTlP3nCuPswhEPfVddc2zeB5j722gNjf+hvPq8F1nE1O02eGtRNoMuhzVlaGFw/GK
	 vX3iJ/E7PAP9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C311BC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 09:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189744578.28848.774054360633033730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9472eb66dbfa790d84debc316ce2a2224931fa13c447666875ca84699c940cb
Date: Wed, 19 Apr 2023 09:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681897445
