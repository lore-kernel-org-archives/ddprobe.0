Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF191C6B4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736089554; cv=none; b=eYrwVrGMvmzbmMTGEb4TozCxlAuM7hZ2ykYI2Kf8IXdE70OZaViwHKgX9DkYlFOm99u1pkLstdSG4XKPRP9/rtOK4YgMEz+Q764mOh14oLVDL02vA+OrHeDLETToP/zrF0UX6/pWIuzogKyWpfRHRo0fKISeiaUpBEHNJ+LwG8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736089554; c=relaxed/simple;
	bh=Tsqjbs1pWXhvfVkgJ73c3ayO4ihb/HC2p3yGpJ9VTvE=;
	h=To:Subject:From:Message-Id:Date; b=JTUAERjQfOoAI+zQDQ9G2Yh1bC0DcBD6Zuf3nNUI/cQDrx2+bxhQa4OGwFBWTqMBMX7wizK+7D4Kme3MWkhnn/7PjG5SPQ8Rd7AF5Kn4QkzriMMV96uJC+Re+SffA/rJQWvXMXw5lp1qU9i4cRs9gy5NjaxcuJ86MMiGLhMtWSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL0qtbvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL0qtbvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54BAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736089553;
	bh=Tsqjbs1pWXhvfVkgJ73c3ayO4ihb/HC2p3yGpJ9VTvE=;
	h=To:Subject:From:Date:From;
	b=JL0qtbvhRvZ/0oCO9q4lhWdXCIAB69R+nw118WP3wHojM4EbbN+hHrUiOT8/fk7wh
	 j25fpSmpVGqVW2hKkj+uCEPSY5Sn2dfGa3lVlxylke4s12di0UVVwcLkMYcYV2J4n3
	 aNge2DlZamafKmzQ8JBoHkYdtB+ubIAn9+U2AOQraj+1biNNi8RGoftRNF0zDLzmfu
	 bTCd10SokLw9W787r/gAV0ENs0qDNZZ3q0YkfdqwIu/WkRvQVhVXok8Qbg8edYOAT1
	 J9nQhRYik8EBgDrjJdcwn4H1bZsA9SEBD9tHSQysDa2jkvR1M/p4d1ImUc2TwnXtX8
	 9YJlo5CEBm9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C232AE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608955377.29426.6024729497766148295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715090b944d011e884aa384800363f16b62ba5b74059a061b872cd8cf14eb8bc
Date: Sun, 05 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736089553
