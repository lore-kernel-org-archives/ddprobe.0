Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390582EEE9F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783572514; cv=none; b=X/BcqfUE+wlR+dk+Yt0B9rx1BIia0x7xuRMc2E11Kq9BLU7BmaI00f0eEfo+dp37P8LPNuQC0svnIzkLw4e9AMO0i6wTVldMRgoruY130wAfYUpRz7PUCMTk+Y5ug+fyPQZCAztQcXqYn40prFfVnSoLmwpHsZST1/0sn4ispf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783572514; c=relaxed/simple;
	bh=RMM1lHh0oUbYrb1J8tu9DuSHis9FJb2l6cTYUoLdHA8=;
	h=To:Subject:From:Message-Id:Date; b=QWjK23mPVEXM+A6Yf64ASLDQeIWDulWysMOwA61qf171ZAOIOKDGOsJ3cbq3iVgfTj4jBkJJrMMaMhNOTiWFJVwmGlbwkdkq8whd0c0Xn4fny8VWC4hL3XIV9Pa9aAfcfoX0WoiRpVMKZnlnnjWJPbkznPhRQ2DqlJD5vC/N3X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHtLw/mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHtLw/mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA789C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783572513;
	bh=RMM1lHh0oUbYrb1J8tu9DuSHis9FJb2l6cTYUoLdHA8=;
	h=To:Subject:From:Date:From;
	b=sHtLw/mfaMEhtaO7ruwg0oPqHxpPW1vbpx48AMMvDDWhGWsWkT6ywJRy8zv2pnrF+
	 fOFUTQ1UZB5aF8msQcMpKHWEpXlak88gZ/VWM+mALgMCCO6/ucPIMeC5x47Ca82IE/
	 8qwUVBSWrja3PBfrHMCh5WeelRONPFGQlGsVD3Zw58AESY1PUr9o592I0t+CVagZDw
	 AYvPjGtuWVFPGs+sEbkWJfRWn+mkP719cy1AVRUv2SDwgkK2tNS+A+cMBeHWXf13cK
	 FNVpZ1PqFD+n/PRhOFHXSBNQycFVVVbfp4RXR6A8p/5Y3QkU5LU4uDKR0OBMOfenDO
	 v6DBeJKSf8BbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AF6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357251372.3684.16452578742684988822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b191982bdde9ff85fab3447a738eaa3053d5e1fb128530fd6965e829b60fd2
Date: Thu, 09 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783572513
