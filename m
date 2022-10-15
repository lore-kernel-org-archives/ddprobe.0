Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C725836A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68AB3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665840653;
	bh=zEvdXfHVemZOpPnYRT4Vif8yR7Bi+gjexX18GcAilS8=;
	h=To:Subject:From:Date:From;
	b=tG+DiVJ7nl2N5WAKIHwv7CkTnLZTNHX4RHf2/2iPRS4gAlr+9DyrVXAHXrVf8Z0el
	 TEVcOzr1wvd7bzpoebYCEkQAeaao0XBIlJu2zueZCNJY9zsupqo0G2i11fxHxw2kE7
	 rJxiLXaO7nKo7PDLbw3VCNZReTr33auWaq+QC4drN003ZhxQ1Wzw3iEKfQM3UaJhlu
	 WgPbGuwD+kR8x0OdLoNITa4KvRCdVJhSTa/rIxQsrRt+6WM5H4aw9Sxn4muKX6BKSv
	 QhNqCiPUNzZSPlGm+lvwpaLd+nYct1ly4W2VclDJBzEpVB0TAu5bQYm5i+Dovm46eL
	 x2Qvix3kDsqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B3EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584065331.14234.9965053801318453699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42bb9bd855a425b15e4d3ba9ff421f34f890806ec98719605d958c97fd33391
Date: Sat, 15 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665840653
