Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C226C3BD
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775792854; cv=none; b=gbi7qS+G/6xb4tRym0a/pSzFkxMr1FRhusT1IA9S1dyTORSxrlB3bObRLA1GAPZ1oAviHFdrYqyLZs32Mge9o/iEnU+8Fh/ARCyjdYDnqjyyhmvoJYEVb3Yon8AQk3fLIkhyFK+3Rg6ESI4UDUdNHZameX4Yl+Xn3XqFpJ4hakE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775792854; c=relaxed/simple;
	bh=LjVsUlQeBmsGfH/mkoweZ5Un6AI+6kHf5KOdqT6djE4=;
	h=To:Subject:From:Message-Id:Date; b=MirtDG6M5S+1fF4522TgPxARZBJfkpGfHOzzh7L7tUPGDRXh5cC1lCnz7zYt/wqU1sSrX6vOum7m2YrD6CZKPMQcm7GjJskOhO48t+O+cGfhM7Yq+5qs76aCMz1Zb1nJ28LNQlj90rGPME7IJpqS8NDZ04oSrAxGYr0naEjlQBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNM5b6lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNM5b6lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BBEC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775792853;
	bh=LjVsUlQeBmsGfH/mkoweZ5Un6AI+6kHf5KOdqT6djE4=;
	h=To:Subject:From:Date:From;
	b=gNM5b6lCZbBuNV1kWFJRcq5403JU2jRlwShS+F8rDG/gmngXd3MYcq8UiXSS9WL8+
	 sxQmL3J06inwDuJUlsy/DcnIbJGv0DDFFoymMhicKG2etNel+QLpD3eVfvme3Znuxj
	 hk3hoyMOkXfuBMzWxsJTHLotB1P7MXv2UPgBuUk0y673ByYA2qPj3TusYQQpMfUVKt
	 A2t/V3pVu9RJAEiTPaHMQQpPgcsMbtBmM7gvj8foAxe1g47Xt8JUSEi7Ss8ljX/HuL
	 qSQBw8xAP/+Fcfi0rcXZB2pMTxAdN83JURHVc7Ce8/xKS6xYSkH11paZ88/hFQZycx
	 a63ZbdaRnZxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0181F36BAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579285368.24581.1408799644982641239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ba349a523ba2098b05147cc8458926a53763e00c21d289e7abe6f910f078a2
Date: Fri, 10 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775792853
