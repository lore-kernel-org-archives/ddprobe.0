Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA82831CA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758619793; cv=none; b=qor5hsZBAtlYLGTOtpwrY0xfpWRTV3tUmN71I5A6yqFFQgmE1mThr84RH9MrE2pErg6bASIaEkop6vh1fU1gWw2KP4QZGktoKxcWO1YVDRV+DUalsOigR9IEe33iazYhtupQOol3G9rVmR3gvYXoXq+mIk43hLpTUjX4b+qMaAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758619793; c=relaxed/simple;
	bh=PsPIZi/z0dzen/j3FIyFuYTh8YvxP7HiJ1tMbk9IvVs=;
	h=To:Subject:From:Message-Id:Date; b=bEXAoPNxddZRncrPeqfunpLXCpSAf23tyHxQLpWWzcRS90GgHW5NnlAlu7HFgwGqpJMhrPSln1KKlP3dFNR4XX2oo1j1IJZ8z+lUlLt3HzKuwEZ35HfQhauUVu6i2EPzd43U/6uiheCg5BTShi2I8lmwZgPNTAzIbSa9kNN+EZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDC4xVw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDC4xVw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A215AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758619793;
	bh=PsPIZi/z0dzen/j3FIyFuYTh8YvxP7HiJ1tMbk9IvVs=;
	h=To:Subject:From:Date:From;
	b=XDC4xVw/AcAD6YIA5U9v/X6bBHjvOnNl4+c4M4YPtdvfKFwncEn31WnBoL6K0CZlW
	 yb5LaHqHlWP6cavlEUQQC3tqBgz2rdroYO6/aYpW2IaQ5QSpNKms7LT4L9yMO/7Crf
	 sSJ0e8ynO7gbtyXjbqPjTwwYjePEpaH+BI8iME74Iw3LPqOX2fS0jchvSCFYH3OcWh
	 QoszuJF37YkaPRXaZue8QeLoifq0cWrspi7mUDRjVTvh8trd2ApzKhXEcRZHXZ6w6Z
	 RkCxD3n0hG6nX6RQT+mCK/VKLfb6amOO6fV34NMXmvTdH7Ph11Eg0CFM/2a4M4VpCF
	 x/UCFRz+wQF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90323CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861979358.13546.12337446526804375504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64c001203edaa76ed522d075cc962a744ab1a1c5afe63b93c826638e902132e
Date: Tue, 23 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758619793
