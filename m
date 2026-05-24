Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596583AEF52
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779663154; cv=none; b=Ab6zykDVplxmR7qntgw+gdYgUsvoaTWUiZGMqYc0EtomEjWhCQn7ZoFcnMJENeawtx3PmzLqxIs7jLIBCVKN5LwH+9gshQZzaitR9SiC4OauoNMRmMJjqB4mQRtO9H236657+SYxbsWO+OOvg2BsEV0l+WkRbNwMyfT/8yOfGQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779663154; c=relaxed/simple;
	bh=pGiDo8Wj2bXrF6XGOQ+n/UEJVcVDLL2r1SCpSt8TNL0=;
	h=To:Subject:From:Message-Id:Date; b=sLgYN8kFFTj6mzuUzDPS4oj1HRvkJdXrJLZh2D7emoQXmsHQJfgGKBtltEPJkrqPhSwDzyIM0Shd7CIISPXNGXSiWMLmltwu5hGUuhtDDOIj3SH7PooPhBh+ZMukF7UtVHAgsrbxT/F8QH4EnpkJh0GgkA+tkaUew5G3fIEJ5Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5Fh69tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5Fh69tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F98C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779663153;
	bh=pGiDo8Wj2bXrF6XGOQ+n/UEJVcVDLL2r1SCpSt8TNL0=;
	h=To:Subject:From:Date:From;
	b=J5Fh69tMA/niCQ2UgehKL6Eoxsy1MymF1F7YikovbC6RtVJvQAittzrLp5OYIY55b
	 7E5G64xDyHEEqiOjInKk06ZKmcFBh0KwmNB6CV4JXU1yJY5YAlmxuxcEeS2YCB0MRd
	 eb8FM2sVc0U8fHZAX3hG8TZKFZWD8nDzdZjDrOe1MtixHosf7giRESuWo5umYZHvlj
	 fZ9Reuh2IbEP0YmzwS/zjCV6Rl9+1YIe8XwkV0+8ttdqhvUDZiLulW0GJvgmDyBxdc
	 DOuI0nDT2MQ/2NH0aiE0A0P4/Um/KBC0StmUonC1vPcesscZ6t5aPhXQzcBzI7TG+7
	 iUlUEWCOlJYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC18CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966315368.6446.11272535220713449202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2912f09f9307704acfd9bb66df2b4862f72b2f1dd758f02b8d90cf99f63c09
Date: Sun, 24 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779663153
