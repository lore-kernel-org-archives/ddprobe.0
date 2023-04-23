Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F603D76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 23:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CC1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 23:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682293865;
	bh=sxPVWw+OOF+Z3xWtqT2TXqUJqogkCdyj4iFbQs+QS+k=;
	h=To:Subject:From:Date:From;
	b=mKS4/elPl5M0kKDXqozuhB+cCNseEaWlMYODjA51sAvalZh2+COQavU1JG8tn4Edl
	 6tY72jevXtz+78y7lSjyMr+DH34uT327LpCh+L6lYKSoGIunPOFKpe5fCVN3omwdin
	 tHzlIRJ/SKXzK9OYXBCEujVkL3EV4yA6ufH2g2EcaTOKDZpGnN1mtR//so3vWsik+O
	 OjdKtqtlMCp40bH3QNKZkys+6YBe4lFYZUqHC0mfXA6ZoPPuwl9cxArBrr5+k25U6u
	 89QZinrYTQ4Hb6CPDWct7zZRfZC/qgNx+9zHBfsIDIsAhv5sAoM5fVHDWGu7bsOaUW
	 6L8oef6YCbaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C750EC6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 23:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168229386575.32306.13749277313942801743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac01d29e80efbb419e96a9e05fb77fd3bc675ed22130b927c88c02414c06df3
Date: Sun, 23 Apr 2023 23:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682293865
