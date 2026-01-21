Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E5F2E03F5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768958634; cv=none; b=Yu4bu+vFb+B+2ZsLhQFRz4WVIGP3k1aOK/+uWLrHX/uLMdo//Q7cDd4u9qbKGGUv77aUS2vwDjgNKvv+yOZaVqW56JwMgfk8lnLn+hrUdXttoMWtBx1AtUdIqTckajmGLj15o+xCndUTeZDSYnNuf/k85xDf4OVy1USNptzw1WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768958634; c=relaxed/simple;
	bh=XQzA5ctb7thiDIJlgvo8xHOcigbLeCMkGgL97CuNlu0=;
	h=To:Subject:From:Message-Id:Date; b=RzRarQm5+XfYbrY1z36DxwzgKUDlvUwYoxWjIRJ67M3u3jbl89IN81N6R2FGOiPRN15+ODcWOBKUH0Gmg4CyvlZrubJFGnmOiSgVOncl3/s9wLd/l/Zo4d0kHVv8sthGJeZLvphPXzYaY4u638bl3CCPNO69WATDyyp0+2Uqb68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0Xd6uMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0Xd6uMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F041C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768958633;
	bh=XQzA5ctb7thiDIJlgvo8xHOcigbLeCMkGgL97CuNlu0=;
	h=To:Subject:From:Date:From;
	b=b0Xd6uMzkYeLYd+Pdki85RdbpQUNmmQ4aAf1IbcL5HWoAxHUeEJ4UNrwJQPMobOQL
	 UXdju3Yr8ERkHRpTQUn9239nyxCa+2WbrAIDxHj1RRvX8C+E7GiGMes3Osh6jpUnaZ
	 G2WH+0654cV1nqEKM5oFyVu0p5PDjEog8Fr/IeJASpXRG5QyKMB5t+BBl4+m2KUk29
	 VK8ier82W3Tzx2r8wxvxkT5gDGKDH7N9nGJQiPjnPnFCAvDRW7XLnnSbHkp4q94CjP
	 lQF5XtOkFKZSlr6OB+4WYaS/7zwVmKqaqN1ZFAu5FI61AKQSBTU4FWuFFRaTJVOPEc
	 bXc0XfAt8Zc4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F7D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895863358.31898.2764123873761618726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f521c3bb186643b757ce9d4fe97012bb3bae76e9540504db1c2ba2dcff133621
Date: Wed, 21 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768958633
