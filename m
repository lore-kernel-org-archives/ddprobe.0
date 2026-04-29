Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6031A682C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777424254; cv=none; b=SlhjT0bnXH1U+milhLNnxfGwQ9ZJEBCKEeQubzyQQdGbhBy4gXbqjuA1UbPaKWj9Sop7fmVOfSp2L1l5JwO2RfO3me51920UQrXX1Hm9t2T3P3lEy/ZqjUX7Bb0YZJ++jI6IN2XbvEAM5Wcut9rSlYMCfFz8diXydfIp/KCBmsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777424254; c=relaxed/simple;
	bh=HMwYY5AXI9Ry4oekTNetdS3K+1/FPX+DgildLXMmmlE=;
	h=To:Subject:From:Message-Id:Date; b=VUIwZadZzeLpE605eV6Ofc3z1NzMvqMZ3wZWtbqI8Uaw77SXAfA6J2c9cNdGdI0i2tMFHR8cph1GjTOeBQFztMNAPnjSpKN3h41ysX0gt6S0+vnjUVzIuAYye6yaR52iJQIv0LQh/FVz6Wgx+sHCacbB2i+KFvUjD2nyfFgjcGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cANS88Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cANS88Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB357C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777424253;
	bh=HMwYY5AXI9Ry4oekTNetdS3K+1/FPX+DgildLXMmmlE=;
	h=To:Subject:From:Date:From;
	b=cANS88BnriDSs378g25E4yHnmeVfuQRBO9PKq8EcDPAemvFnKd908lXRNefaPsiur
	 P47I3/usnhM04QCFm1fs3p/hN3XYveYJl5Umonhj53ql+LLFMehmvXgSDWH/+OaK/u
	 GRw6kiLB/m1lG7hpA294EtfCLXs+y5RX+j0evswLvhq7GKLTF8x6bOPD0l+FBWeOVZ
	 Gllk0Cq0vnsgOAcOClLQIXKElD7s+TxMzet5sRmanL2OxMIuNQNUbRurvuQ0IjtPAS
	 vEKvGBsrrjnV5RbZj3vtYVAOCi1hAjWIK8aDToRqVdM5we6JyliuNV5HknE3Pf2eyc
	 oBuLUVVQ/5hHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B2FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742425368.21745.8573168564297530084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0668e68cfa91f3823ee26af694a37642efb089b932ed95f7346f847ed7e97547
Date: Wed, 29 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777424253
