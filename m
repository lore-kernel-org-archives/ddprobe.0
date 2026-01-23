Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4B2F1FDD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769211834; cv=none; b=Qkgx1HF7eVWsV2iwOmBsJYTYLGIQ/AvfWzQgy6TKygwnYeWo/ozzzNXevxrj/lOcCciL5oMsCgdE68A3VRaP7OiHqKe8iRvbbvji/PZb44L0FCulYb3s4FKRcrgr7zp5bsOrYOsCN8gsAFUf4CfjSs/KJHiKIhCi6jyy1XIeqIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769211834; c=relaxed/simple;
	bh=XLL7eqcISNgYtV6DPTSmqYSik3Vu3g10BwEHo5dGEmk=;
	h=To:Subject:From:Message-Id:Date; b=uIU1s/gzguuJoRXFISRd7H2jLBUToY+piMi6SxqsS645eVdS6eDAgwOHv1aUKt05okUBNxlJt3iaEvH1RJtK56jHoqJbwjXadNBt/LLbUcDppxjZ9iNH5Ssm76KBPjl0pI3myS/k76erbBeDRRaKBMxG5zUMEgTURnDrZ4X+lxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGanID5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGanID5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769211833;
	bh=XLL7eqcISNgYtV6DPTSmqYSik3Vu3g10BwEHo5dGEmk=;
	h=To:Subject:From:Date:From;
	b=oGanID5HvyiOjvju5xK69B7flZdOCGFwxNhdgBPvmXdtiUt/+d+3JCVgnAJoKPO7o
	 e08UjAquYqofytF5zjqzVT+6Y1OEWrRcThYwheiaohIacuie8+TrS4AJOQmSQdtCp/
	 NITCmCVjcYYavvzkEFLqwM/UWSiTd/76CA1w23F+iVHwfgQLvUV2CLGAyv0o7qlQgp
	 8Y+xXquaWGzbSMKFj59gpkHJ4f1gMv/xA5HOCmCPlQdYLR+1xnMBx9Ee4uaL1ELcyw
	 5TxAPZoKRNkdJmI7fNJRq14Vyh2XZA0k+tBK5rEkAAHWzR9ynEeUWoAvmVCbC/f3nq
	 gd0gaZ2tR2nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167AD778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921183358.5352.4853303911901967305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338f59a2968bd8c61336a82341591f4997b123a33ad670099476d14ef77ee9b6
Date: Fri, 23 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769211833
