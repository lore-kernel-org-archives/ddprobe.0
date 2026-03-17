Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1323A3E75
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773752093; cv=none; b=kYTJdtA/4coWz9KYzZjBYWo0EkGjdN80nTX1LBvmOl38kyaLyyPgiX+57/FzSoQihqFMFyhNDElRw90ZfbbMVm5X5ohmnJQxULAM9c7u38V01U97NKb83pEd5Wa31yDVHNcSUJ1lqtyfF2oeeKNGO2saYB8Y+aaCDZcs3txRb5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773752093; c=relaxed/simple;
	bh=HaZlOM0k1xzqLs/aEQ2EpQJzmmsDencvJJ23jzVzI84=;
	h=To:Subject:From:Message-Id:Date; b=XRpAoHzMsAF04bz/ach9mrVSHWxZaqoMOXbs18c3vNFR8cKXErunFYDwLIBXDRoWc0f3oE2omyeJTR+LRxfFwWDl7KAsL3ckD51OKpGnDIdIWXZbx3LQP6N8TAYXCPcDLfINb4yTvtfk8OPKLHNB0CaV/uAuIWiUw0kgG1Fq7Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxXIy310; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxXIy310"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773752093;
	bh=HaZlOM0k1xzqLs/aEQ2EpQJzmmsDencvJJ23jzVzI84=;
	h=To:Subject:From:Date:From;
	b=gxXIy3104vC3vjw2MPXMasvolI1TFi6ujutn5vl2AizO5V3g8v+Rye1WQsIe2q673
	 T9tLK/SXvigSpKWezWd3uTufEyy6YTbMGDSiMF2BxyHXzJOFnDnKHX/1pj7w5Curkx
	 Kfekbkr9jOObVFe/6OADPf36JSS8SLCfRuYl9VBA2tFqAPEfBPapoy0xMFqMM+hu40
	 fM+lhRhhqyCj2DQaoee0+GnjQd2RJgGROF2K0Lbq2pZMvCuECgAxcVFGKxcaQflbo6
	 Oxlv2PU/BqjVX7S/a/jxSySdaPz/U4WkkiP9FnFihgAsXIjsQJe6cPD90S4pevRxNB
	 CBzSIR+7CmSrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74AFD875E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375209357.17643.11185490708431047705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4365b1fb128eca1d6069bb661614a1f9a8e97fd5fd87089fa884540246bd975
Date: Tue, 17 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773752093
