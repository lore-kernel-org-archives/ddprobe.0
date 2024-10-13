Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F4C2E406
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728799554; cv=none; b=PgGb9nlkHQRZcAd6j0JnSof6hpL5CDsCnNzzyCBrNDHHbspbQ2jc3n6+kGQUuP9mSQsq6Fpo+ZD+crNra73Qghu/kp+ppR/Qp1RcLfDrXQ+vICQoVVO7Wm6kM8QoIOnRQyw6R9VlOUV3KgLavCMNNgDU8mHQ2qn2Yz6e1hjFCuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728799554; c=relaxed/simple;
	bh=pZ049fCLB2GsyYcLcF4xutrKmPCcdaFRzhD2wuB0woA=;
	h=To:Subject:From:Message-Id:Date; b=LMFMScJ7gxxiahcWS33nGV/mDhqdZ5xK0202HUZhH0Zgr5ZdetXMNOQhxgLeO+W1/fNtStn+PPxJ1de9ecO/0FFKk8qMQEiiTtF6+vgBa6IuSZJT5n69NG2dnlNIyNQ8k6FFgO4QQRxpcybDx9FwLoK8ZQ50f5CI+KlVflsCHt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9zcnBTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9zcnBTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C6AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728799553;
	bh=pZ049fCLB2GsyYcLcF4xutrKmPCcdaFRzhD2wuB0woA=;
	h=To:Subject:From:Date:From;
	b=C9zcnBTBgBxvtEhRVpbgxme1iVZEWqW77f7RY+mKfka6U0SkhbOcfXvwuV3aoYI0R
	 rrnyeVEHDHEPYhUI9xJTmj8gI9LpIQAbnuP3LsnZnzqhO7gXlOnJQrDT6/4Af3j7zI
	 ZnCLBiEVT5JU/iMNwUyJ14MGZ+Ilh3BrClwYeUmEPafLFIfIdLfkQ2o2BTMEpRhxov
	 3yOdEqRTb1R2RIRRKRjBF2yxmdycvR2JTWVD5dPpRUblbOHKssbv0N0leWfjr4hd6w
	 qmJfrTDZ+i/Y4ITmCsyks954A/LbhZI7eiYZyC3K3+60V+hdQLHXOTBR3mpXT/z3+x
	 QrYRj45SgYOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E898CF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879955361.5680.10371558360592179666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a1272a9c8d37ecdc00d230526e9085adf59436377344100a3d0566a881ff61
Date: Sun, 13 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728799553
