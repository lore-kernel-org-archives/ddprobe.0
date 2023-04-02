Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3754353B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 21:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA90EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 21:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680470165;
	bh=ITJM6d0U/mGpqZNguyA3EnRaRSoQkVTvGoMhest5WuI=;
	h=To:Subject:From:Date:From;
	b=ZxSVomP17UUflxZuH8ijKYmRJ43XMThDj2GzIn/XA8SwcuMciy3hoxPBPdxmDiZA+
	 FQSsbxdXOMTupsegA70JhZnYyFvOFJbDI/lXm4aXLQxnTRZPBk6koLgiU+veNQOrEh
	 Zf5Nq/Ln6Osp82I4JJeZP3IapKFc+mNT0DxHNxM+Y1l2A3BMgImj/2gV16NvOorkHo
	 EqrwGIxchNDtAbN2i7PAO9WYNuRMw/6CRA/lOMHtTNeHqcuJMZESvT6jwNyThNv0Iu
	 u6gUgVWhSiavQg+YUAiSA6t2gAXJ+qOiND6AVsvZlOS8MxDp6M2UXQrM/j6MmYtUxz
	 Ef2DhHpe7cZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1E6C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 21:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168047016575.17806.4138177041120699794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f981ab7dea42ed26d13032c63a6ec5e09cdd26b8289cfeb52ebe4ed135a2e441
Date: Sun, 02 Apr 2023 21:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680470165
