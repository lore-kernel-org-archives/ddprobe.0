Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAD59464
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7050C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678372865;
	bh=uz6+MRbR66WmhYWiq/vWmQjI0sRlK1U70Rttmh9sg1Y=;
	h=To:Subject:From:Date:From;
	b=fjB4KRV2YiXcsdPu0pmrqI3z7mNf2hdlt6BaXRYNOImyslfTHpAKfiQqXCVYt2efS
	 lSxBa0QeHtabikZT51JiL2Nd9gMQ9rDD5rkPuGv8H+M1taYrITRj0kskYPDT9w1xPC
	 0HA1u5lPqUcH1okG8V99gYiZMaXV0aRBaU3TyowijAAjdcqRMlthwr1vcT8LKtdybF
	 9K/exeSqV2eQIkj/BO+gHwOyLACqy5WMysdTg82VjdEBQIWqCuKkEB7TlgMYHPMiyi
	 Wqk6AvKiG0WqUC9RSYIER+BUfbCoN78ytbQCuPInqkPQyQpaUWMMfN3kYU7yGv/yuT
	 R0Wj+DDFZNeMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC800C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167837286576.11829.17803540221689618645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb57a95b2c9f59c756ab0ad6ee2da3b70ff1f2f1baa218fba20870367ce8f8f
Date: Thu, 09 Mar 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678372865
