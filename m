Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFD13EBF09
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769229834; cv=none; b=QAbpP5+lBSYqIFrzfyXaLz2kYdIJecbOwXnaAMR/f1AVERubopkCqxk2rr90118nf/cdqTngRN4bKDGsU0TaGvTUG1U8ZyfIVeKnbt5ybpY3Y3kiq9GKFBTO0cdVObo86nTG/4jaUXhSCnXYjK0HngL/4aEYkekMqFmV/p97tsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769229834; c=relaxed/simple;
	bh=sbKo5ugfpf6HmSV/sMUG469cHGjShOXU03Siqnb6txU=;
	h=To:Subject:From:Message-Id:Date; b=DnvuC2JK9kBYSAew4s7gi9jE6hgXJY+9NboC4KXhRr0Gch6qc2HMqsGIxOk+s3X+/CQyEPhNl/4pb+I9DfxVRaKyVS3W1NgLfVPyJ1N+q2QfnlteGKRXH4xyDGavjF/AM/QP3CWpgWrQ2JdVHh8vpXxhlDIvSBem7XsyDqMpVU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6hrDrK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6hrDrK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFC6C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769229833;
	bh=sbKo5ugfpf6HmSV/sMUG469cHGjShOXU03Siqnb6txU=;
	h=To:Subject:From:Date:From;
	b=Z6hrDrK44iz6+UIr7f0bTsornRcOd/KhuAXJ8NkqDfGSOtWElk8UrAokSVDQosNDN
	 kweVxGjvsNHPeuQc12m8xWXzPnNUkhGn0ASZrMr4dPVCkxmuZEqiNT8Xf/FLZ1BIOP
	 jn06cfPjEB9FNVIfcbeCftS92iW0+RrSScHW7hh8SgyY+rg3W/iVvgX1kyCtdmdTM0
	 2YyYWH9ladn/9gnUztjRlypjs2I9tfN8OWbvxwXo1zvN4pmKrhCqlvGGVp3LU8k4xP
	 rQ0FJju9/UhjU3fEVYoeC+H0Gvd4oy/RNGGHutpzuu8oPw7YwmYYJLuxVQjBPGtiEg
	 ec4+4n1WhCJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FE5D6CFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922983361.12145.3262122808775359266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dbbaa65e485a2be772ef776c4d56488751b13a8241a6cb5fdc61c0c65ace688
Date: Sat, 24 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769229833
