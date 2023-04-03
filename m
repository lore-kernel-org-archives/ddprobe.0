Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588126FDF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2DEBC433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680541566;
	bh=n6FPrZAaNdGepRbGPhR+AZpnq5IEWAH0eKGiUJ7gReg=;
	h=To:Subject:From:Date:From;
	b=AWO7tcdGeUPn6Vbkb3G8O/at+hNRGli0nEJUYIQq+acAsh1UOniDxvQAcG70vfNQI
	 i4M8Cf37F/ax5mAqGqcCZ65JgcOnPaM+PVBiOcR7enVDgv7cHYKmbNXuMbcAfKZdMs
	 YGD2m8iSj8zPIDlz7pmkIpxRNX3LXuc290LorUczbPTjqSVQCoZxRmzV9BvDuOZ7L2
	 Tn3Jyn0vnhHsaIB7VlLKUhjyUWbJ4ACvf9q1lQIsX7g29YfZBvkTnEKUpdJkyCfkhh
	 ACdEwoBu2fLAvfhdb/SWXzOOtmrnnpfk8czqv1IGJ/FAjZ1L1CfloYoZ+KZOGNS69L
	 EFjNifeObLT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DADC3C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168054156588.1040.5540300641533533580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d95ead092ab05a1bda0a76da4d7ae6de47558486a389ee49990fa4b9ffb86ac
Date: Mon, 03 Apr 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680541565
