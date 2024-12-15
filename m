Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195C22F56
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734245754; cv=none; b=nBHABGbGlQtdwMkGFY9xsEIDeqgQkuqNXgvAHGKCld6yOvMd8LSyBQoRh2tkYTGc6TFcHY8XcVu72dM9c1i0CgdRpqFFrSGZO7hpvnojqYMWWX2FdTuat/4nkgz1SAQ4MCvHfH1D996mRumEHRhrJfB5uq2ff0+cYoRNnMqvUZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734245754; c=relaxed/simple;
	bh=tvBHQSgfvPuha+7Aw8hJRp/7Bs75qtP1w1S2uhH/7DQ=;
	h=To:Subject:From:Message-Id:Date; b=fX4Ei4j9AQnvxEV3ktzC8ebt1kM0y/PMG0zJ8ZxISN8ARtfbHhGvEAUIdEGs4DoABCOp5Zs7W71WhbS7QWzk47FOX/XUhERW5MX/9dAQ6KJrmpVmrI1Dx45DQnc26D4gjJNWyD+X17Hk3EKyynE4FPPodeG9CKVEp58mhqLpz+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxVcSE+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxVcSE+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5BC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734245753;
	bh=tvBHQSgfvPuha+7Aw8hJRp/7Bs75qtP1w1S2uhH/7DQ=;
	h=To:Subject:From:Date:From;
	b=HxVcSE+XCUPnqjrr9W+Pr5cdDjIhJ4X6dfnPQWzG99ToG3XRZOT/M2S9bp5j263Yb
	 kVhAW9SqKEgPM3YVuYcz20rTSWbJ5m+dn6xJpMAU1BgBg1uKA2MKnX3VODHJPHiEWS
	 ds+AJHuaxtoaf8VpJfQxXDs9yFH/ODM/AMglgmrVL8LwtQ+itObFtOU/OJ9CNVMoiO
	 YNt/Q2tguZHDPoVi/nuh9+GirNf0c4KuTrMasZh7p87dlYhKPeblLUxd6RNalfmUiO
	 48Kaeplx3tZVcM3RNj/okkxjrkpTuzwW/Blq5pM8PgLAquiWRjA1d2G+WvS12fZHPS
	 9oQSPxy0O7hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DAAE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424575360.25204.13471127718622507977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8038022600c8d08a66ff296b4de7471b03b7c55a85bfa3fdedc183dfe5dfb994
Date: Sun, 15 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734245753
