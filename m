Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22341C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88149C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670812887;
	bh=BHwPiIAIZVJUQrVx7QslXf6O6dO6W0+AIFD9TSnnXQM=;
	h=To:Subject:From:Date:From;
	b=CWHlfpXulPP+5iOm/SYXucCPKpYbdSnjYpzhIY26zCiqpelrYBXNZvfKLR0+MEPPf
	 bhNIaZYHAW4gxoKi3EajilIMeXgfRS/seJJ7rMX5F3hmjSn4KbXjeSWn3Tj2v7whQ/
	 127xpG3ABwan+ayhMJzOQjN5mUYBmoNkj4YiwV/30F/3pgSaJPz1fZUgD1agoDw80T
	 hsaKL++sYrc+g6Ju7YS8EPBwcpfACiLZ9mmxh9EHAm4fiMPb0qDb25cWS4KFe/MKqk
	 uHxbIkWUe85xJQ25lq/+IqD+pqKGlxHb5zEKrfmHNx7YmRTF1jgDWUvMIFLFVcGV44
	 lA8bCCbv100lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685ECC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081288741.32705.287665352898004122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f0a346df6864a7d6c67288bd132c0a4761cace15e5a12779bebf539f8e9b33
Date: Mon, 12 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670812887
