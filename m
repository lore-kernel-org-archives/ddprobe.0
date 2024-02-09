Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05577286AF
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707476897; cv=none; b=mm0/TFTWDUjQ8TDCVZTHceEkPkLFGRKDQ88yVA7zldU+A/FtXAyHka0WlxqlBZhlW/1G3PXxGpLxSwolx+jF8vBkA5h5uKRY3DuDJKq6VyI58pL1XSPPnL1/H1Kb4BB91dSFhVdXy2sBnIqEfHUfPDv1Zi+hCzMNsaKMu8+DEeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707476897; c=relaxed/simple;
	bh=Aq17Zi38acrsd7hWdszwCMQY4JTqXSTJDXiREHSLQDc=;
	h=To:Subject:From:Message-Id:Date; b=fEaZNqMBvTNUBfLaw3ND2cg36WXyyJgSUjKlM+SJvazE7gHnBPEbL9qwGy45c/Tfurk9ZVzNyor5dbGWClbdpTStwfxQuVNp/Qqm1vzdvu0o3qMiYR5OBGSXHXb+jR6FBmKVDtBI0qwNu4zBCar3lT6YWaQZArOQbinSEKsAm/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4NgaOE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4NgaOE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDC5C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707476896;
	bh=Aq17Zi38acrsd7hWdszwCMQY4JTqXSTJDXiREHSLQDc=;
	h=To:Subject:From:Date:From;
	b=e4NgaOE0iNKJNdQmoXyeyleF6I0GPHISUoFm4jxuP03cAGiZastGwQkg+tTSA2erD
	 p8jmrNW0mv4F4lhW5bLSMOe5GwzLPN0N9skXeZb06ngCW7K3IMTiBFuyVyZJInhwVy
	 dwUvlCE5vwvV5e0R3Z0VxjSJNW5O9llgbCPM0xoq0fqUyoOqgGdVOvlUD0JjN3qzu8
	 dqROMq290GrmDYP2pWFewDmnAbNvkTKD583G7ziGB6KH5k8NkL7S0XM1+Enmpmi3x7
	 T81NOCdFgssaeSCTSk1HCBjJNGUaXbDDUd4f0lu3VX2hmQyxMwpaiQrJQFfTmQd08M
	 rm+S3y4uBSYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618EAC4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747689639.26867.16188136648993107091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c189bd9288903d5493bb926c03ace0a1df50f754555ea5dc48cbbf7927d47b13
Date: Fri, 09 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707476896
