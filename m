Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C791A50
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQJwUp0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83296C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703992696;
	bh=wvHLnhTNV7DAZAbvy6D2WK5MTIiAb4AEBIUh3vQmxKI=;
	h=To:Subject:From:Date:From;
	b=eQJwUp0JVyerMfE8jSGGVeUFWNkqRixJRGailA/HqRPUUcOwe8PgndQAtLX+ODiqh
	 Qu+KDSZk4fofTSy81uwYjHdSUkvZFsV2VdkHwZsyy2lCvGb6adqt9ZGwSCcZjEg4mH
	 AdE67hX1+fxrSFaIJ+XfrvAWZulhk311j5Ipqbhn/TDH4ke9COnv0L48eklLW9Sux5
	 ZmfJTZtVQZpQZEdTijPkVX1oPy9I4FN0Wgj1btSyAwCmyZ4cinIxI6CNzfwEtvT0do
	 mlL8uIrKVofVAacGcfoJ6s6HMcFDDbu7OT60Thz/M2KRUNXqLDr5b9aRMSC0L+PQFa
	 cdpAEy1+o/G5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6605BC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170399269639.15904.16433229874070980303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefeeaba61f95239854e2b0bafb25d56016c60cae08a5594769e715389696fb0
Date: Sun, 31 Dec 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703992696
