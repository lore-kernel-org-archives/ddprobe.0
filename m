Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63197B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78215C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666088453;
	bh=3IoUGBmsWFcKBYp5q29Ao+SICpx6AtVcRVlq1SJUlUc=;
	h=To:Subject:From:Date:From;
	b=ukY2oq7Ox8centCtB3mfW3JOzaPiEj/AcWlOLkg2WpfdqfNkBSOzBTOPcAjCkYSFP
	 jOIzt5+PmX0lB5o/Fkh0ELDi9euel6jkWs33HVvbtTZXgz+ZkJUhgu2KWstpLebblv
	 XTthl2i5iyLOgMPyCW+XR9ZtdiuLV1Hy+LD1Xz/aNOxuOzg8Q2klAKKIZi/CRpN1xY
	 fS05jrtIVCL3yXv63XSBTPnru/oqZgGgfYxQTwWB2v8R97aV5B+FGt16U9uS8zPocq
	 xZYQyUfd60bto9Xd7mM6m2b8wmWd/3uw96bJ8xS0fYlFA1E5yXSEf5NIv/c9wGSHIY
	 eruvTTxpE6j4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533EFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608845333.11949.14894406398687549295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f9a9cd47e18ae0f132c6fe560123058a27dae1838a4216a5f32205c804e6b8
Date: Tue, 18 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666088453
