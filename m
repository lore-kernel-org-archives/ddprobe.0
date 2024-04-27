Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490E35D465
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714216943; cv=none; b=OqnAzBDsAg+JrdpJUh1mIj8AR5HtRcVwdyoLPtz8G4mBA5cgieiIt8uUIjG0H2yDIl1P4NZNJWjcMf4Cb+0PeTts9TdzQJO6SN3I7xFSVAWWOBTPqvdcVPWqzdkS7aMH2nnDGEwmcN9ubLhsWBOJ/5oFWYSsNigUZjIHJ71usVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714216943; c=relaxed/simple;
	bh=F+oK+PbsGIbkKqYxawa4eb1+9n2EkWahbiNUp7jB6HI=;
	h=To:Subject:From:Message-Id:Date; b=u9QQ4uvPVN92FvVUZqngFAXH80HtY0dRs5HtTSytepp+HKqqbVu+USa+KNaBHHD9YNsosMmO0uYiDiTXmhn6v2PetSEpqvXQwNGM3Rv5fepw+a8p92LkSIgBmlVDZFtz1ft/IETzwq+zAPaC0owHENsGnG9hI1MiWD6EvMowKyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKtKHMfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKtKHMfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EB3C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714216942;
	bh=F+oK+PbsGIbkKqYxawa4eb1+9n2EkWahbiNUp7jB6HI=;
	h=To:Subject:From:Date:From;
	b=jKtKHMfP2wfPEexaRlu3/zBMy8Q0+Y+eX59eUCgPBOx3rlV++H+4iAH3wana4eoSv
	 YChQJXrEtFo4MtuelQtAASFpbz2iK344w618fyI8V9mxxbyiFpMT8XDOQft2ShbBw4
	 uSsu/FS6LOBDPZ8kN0Cm7l2E9huHBEhpuvVnwiEEpgl+MxZk8xnSIC7QV1qJ1dYvbV
	 JZGNF7TDVOjfZLmFyK/HyVn68Zovl9UKYUy9AK0W/iQuVKfjDBzZGQcWZmVu7ccHzv
	 Bp6DPZFflaWu4JsyAseAEsvm5zG/ahnUYBCEw+1oXEc0qFGoKGy2lVvzQejBC5D4EK
	 KcDOfY/FfUhSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA14EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421694275.14231.3315571413310828269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a089cf2346786ed33fb29cd237c9d693238edd22f510198e42c5849a513946a
Date: Sat, 27 Apr 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714216942
