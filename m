Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE9275AFF
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763988714; cv=none; b=lhJIV8+5zDv1AV8GvtPcMDpA5RBWRqV/JTrOv57E4BkySfXrSCXoq8eGhk911ZTHcGzOKxOf9/gTZHv2SldOsrn0HvwoLT3p5b/DEq376i3jGUYGpbVbwWX/XBAygMTWSyDRX/sCulYVfqzYbdaYdV22WXbBXPphJ1rLFVgbZdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763988714; c=relaxed/simple;
	bh=3oiUR2/tvSX06/J4Jj4oqA+GrM0Ay2se70RCdZUfnV0=;
	h=To:Subject:From:Message-Id:Date; b=Kqwhnfg97AQLhOYZhslPyA22MPsUPtP/Nu7Ylg2ZmxYaG+9v49Grs9mGf+wB1e88h9Vbc4uUx9F6pbCJKRwZD+FEWlGJ6w1BvZVkPnvLgRHPgCMkc0TePJggTNG4LVNQxR6hjIVXtaHdOi7XdsO3q6a52xG5EuOBswfQMGOwIbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZoHa29p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZoHa29p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B88C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763988713;
	bh=3oiUR2/tvSX06/J4Jj4oqA+GrM0Ay2se70RCdZUfnV0=;
	h=To:Subject:From:Date:From;
	b=WZoHa29pbDRojQ9Xod93r0eeEzTLlEHH2qkiNpiVnOodBjkaTwVNzaWNkyvw/cXuy
	 YMSyrqVGqRm0JiF2xwbDO7vkpBSV9Gy6UmlaeBag+9nuWEtNv4lltnPEEnyVueNzPk
	 3ph3Bzu3lfMX50ch6iKGLaeAmr0A+TMgmq6ryLcdbX4Q0rlhDBL68CmyFr4KH/QMJ+
	 AvYKHNHxtP6etfYMP/YN6N5/enpsAUyscJxQG3oskgTg/3/RiUck+fOJhAekm8R+C4
	 D7TSCpKOvqZv6YymY1QwKDKlK+Ioal21N8M3b8vAGib92ZBCLNt50jELV3W7EWwOth
	 209z0cKRi32KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425CCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398871359.31451.14464887139613259242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703dfe80969d60df91df80ea3706ff8e7405807c520fcab361027dc6ffaf88e0
Date: Mon, 24 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763988713
