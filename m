Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E01D28FA9A
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747855795; cv=none; b=sdxc5AVI9B1uNdnep8oBv1c06lUWsUIyVDCsvoXv/5Kh/jcN+C+zbcAh/jNgKkjnFk7HaFq1kZ5qdMxsWyiP/KNpl+kYlMyj+kcK1NyJpc50d1sJAC2VLXdAHIqwWDa3Cw5PSekSrhZYjB+PS+MgYpXWc4LZkO3mT6LpmmV8VL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747855795; c=relaxed/simple;
	bh=Tm1DaMnGOVWw/O1kh66VrJpuF/xIyJBNPy3M06kMiVQ=;
	h=To:Subject:From:Message-Id:Date; b=Ovy9uxJZ59WRR1qFKAogtpDBCqMBkbfNiWKzzNjatYdomjXeleNNkgCF9lkpf7EtfFFSpemwkHVPQaocwqyHLmfsAz6MmDaTkLWIXzu3Ri9X/EajsHVKlRBwtTsdimkTZu2zt85amGaXLUUa4XXkHb05+xj5fsyZAVg3uRfMvJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqGGEIu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqGGEIu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7CEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747855793;
	bh=Tm1DaMnGOVWw/O1kh66VrJpuF/xIyJBNPy3M06kMiVQ=;
	h=To:Subject:From:Date:From;
	b=nqGGEIu5T5sJrHzPP41LYv8H3UdWL6MP948bDvNRtm5y58A04dVlwv2lynIoflz1p
	 DFm+JxTSB4p++68sR8fEM5mLuMzgQR0p/5NAHziIZPDoqYystFe+UW4lSm6gAGmOhP
	 bWo652wtP+sT86CD16tC5d5VGpueOl/EOPrew+JRSrfvR20jOoSon5733iz+i2blpw
	 ADY7ldabHXv1maJHGbs+f2BE1yHZU5gceXy0gy5+ZlloPciYjHIo9vAO8ZbVhGffC4
	 XT0DdA56SFKjoEYsoLSJQONS9Hu1xxBBXn90LsYotYIhS3kiQVSjWjYo3VkoE0AVLv
	 z9OVy1e9T4JDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9574DC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785579359.15951.4073488532502121032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8979e9de5128640e9ac9054ecc870674523f24dc0b602ebd15033583431712a
Date: Wed, 21 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747855793
