Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5E3377005
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772643294; cv=none; b=E7/FOoWurjEUwRGBGDIETe2e4EUe9ngsRzpZxUeSZvDsIi5bQHVp5i+GR9cDOBSkK3pXOy7Ze5NdGT8oBxtM5zYYBs+uB0SZi1LXkCY1Xxl1hDxYvqBEJ0KplhzJbe3AH5Fws595Cy7qfMHHKZCKoqpiMwxnjBhayEvyeO/4QRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772643294; c=relaxed/simple;
	bh=HLgbsqYRgJt2stuE79ibijJkGa/5URxRsp2qwv82IMA=;
	h=To:Subject:From:Message-Id:Date; b=FomilU10ac+U29C4R9sx1fGWN/epWbP1lmLVoqiiEFCMbXYHr/gJfgr/yt57EANH2AtLNJNjOggXNfL1BZ1VA9Mxsb16YVxu3QaAF2Zt2GB+SxIDrpXLcrQ/mXw1iU1JUSI8j3NhQ2pqpL4H6MgcRmiBcEGPIi5KILNfNR+s8ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrnzMFQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrnzMFQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8804C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772643293;
	bh=HLgbsqYRgJt2stuE79ibijJkGa/5URxRsp2qwv82IMA=;
	h=To:Subject:From:Date:From;
	b=VrnzMFQJaa52r3OEpZl53MI44bJD6oTlMDgyokSkAKJf/wVwS1Qhrn+8Jm8WsbPhG
	 hA2T6ykjM94jd9yEagT1oRLm1Qs50c7fXx7M0m5IAiD+aH4it9xrwvVCpDofta4Vic
	 tyhfezE7pFHF0HBdb3W4nxJmZGxFVEPCAWjeLUBin9XUhxQj+1jWnPX+KjIXd0Dde4
	 Yi94MWjfJItktt+CWhn7Xz3lZBgkiFu9O+bv0EHOjxVYqHVCKzUAVshWKsDjmRlJN7
	 K+7BAYOiczE2bT5e6JI6V4/4t1oR2+wqPZioHPBB78ybckIl77nwqRdiZv/Zsn9gu1
	 e3XMHmFhX234w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA78EF9014
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264329363.6889.11190321429583818588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0306b598d9e83f6ce141a1c42739ed8db444c4e17a127094fb0f923ff9566261
Date: Wed, 04 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772643293
