Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D29E7261A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748092794; cv=none; b=nTI5BiR8AneuC1KQu53B66M8rNqLRW4AXUoWmJpcvhYCRTlbHMYV1vb9aL3u/iPVSk+CbhEiJ9jHU+joLVy1/4iaT4xNkdy2qGqTiI/JeEX0kKxp+kUGxV+9bBgv94Lf8yPnJQ1XNxlrjXlFGgm3J+tTejvWa3sp4WtSMj1p6KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748092794; c=relaxed/simple;
	bh=+w0avzK5UWrXqMX1GL3NEWE/tjUukMh+xig8nDIXplQ=;
	h=To:Subject:From:Message-Id:Date; b=iH3jC04X82s90r6bSGM5UA8XzZ3rRt15EyMhPRR6cV19hmRr0BHbwJ/Ggy7VRmOGKCgzSbvyZLdVWs4BUnjZG4GVut+TE4UgEqVuLxI63JOgvF7MchDT33tvEE3IKQDwv4BWqJEewp/ZuE31s8G90frkKveauL3ECOzbzm8pL8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbB1BxMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbB1BxMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5131C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748092793;
	bh=+w0avzK5UWrXqMX1GL3NEWE/tjUukMh+xig8nDIXplQ=;
	h=To:Subject:From:Date:From;
	b=mbB1BxMBP4rD1BFeEOENgHO9JrYqHSSmH7tdfjey5mPuUtS/RFRr5D71JXIkp1AW+
	 7psGvrOYVyaxHCwnd6+TitbooQYV/awCBpajHM9gzBdc9UHIbl1NEHcUMvGgNydu7O
	 ZGS+ykVi4H9P2AnpH+ubDOBFCJZem2XARQ1BLEuRnzFyi0SDApPQ6bZiK+RugmtDYx
	 7Jj411mXsHCM8le2epBVGUUrTNUObBINAYRj+OEGYoY3MBZA7ubDo0rSK2XExfg8U1
	 OHKGSNM1ezTo7v9edNHzCM1cOYZ4QiEq0CS0p/LHUsvJYtoP2JbmR37HJQhK5IuayC
	 yAOdDubKPYN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458CC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809279357.18588.7571091419560555903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccb5e911a6586b7f9028c061b4ad68b8e7ae0f1adaa2cd2f96b814560facf0d
Date: Sat, 24 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748092793
