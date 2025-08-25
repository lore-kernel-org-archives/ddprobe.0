Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE9285C80
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756154994; cv=none; b=Pj23a+U+nbNR8E1mud1NL2gFLq94fgzIc8jcP5A5TVae8Oyfw8chOO9MOuankM7kDwlqzB+Vvg/wN+9N9noLw0H5AC5lRCEzohI2eLIwJO2EdZqMaPdnn8wLMoIrtqk70VcShPs7baYlF/37uX2vj5DwIcZfeIgkapOHKBjywrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756154994; c=relaxed/simple;
	bh=nJI1m8kEoNXSxGN2LKPBdx5BzrF6TNm+iLqrd6zPiSQ=;
	h=To:Subject:From:Message-Id:Date; b=uBvpYSPg3v7u01I6vtL/6ZTEP/nhOtC0qXswI4DYwTpvbyXHk3FeKdpyyYey9M9gkwqiFKdatjaLE4rvT5dOg4hOd36VF+MnWhZpOeN5/ohkc/o3HYyiIOnKyYdJT2imSoUkt5nqeXZKwlaiPXq1ag5i6+/uxy9Odr/4EYXF/hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCOB4vJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCOB4vJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756154993;
	bh=nJI1m8kEoNXSxGN2LKPBdx5BzrF6TNm+iLqrd6zPiSQ=;
	h=To:Subject:From:Date:From;
	b=JCOB4vJwT+XfbY0UIQ1sKcFrENT/aLY2A2cO3wUMNRI8gO8IuB/ExS3y6bAqxh2Qs
	 Tdsm1aT+X4Vo2nlWiHaS3ahaqGv/bSnoAbs3bG60ro2UIRtHq1xG8+N3KIYRNFemwH
	 MALjMT23RpOvI7OrdqhoWdbSmn7PyplufMPFzoyZSWgMRr0oKtnkOszX2FXYpRX7dE
	 xUUFX/qxmR+51N9vgDQHoKusiik5/9XJfpOk5xnx3tv0JSn0o5XFxf6xiE4yrCUM8e
	 8T3wUgFCbGINu+Bd3Jh6lREF5kMtu2YpvDlnJ0OUL2RoJiAcc0HvU9lzfA3g/9WbiS
	 9aRCInOsf5TEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF8C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615499357.30800.11291574784599090141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95e9ff8f3f698f526d903972333aa09326bf9cceafec5467abbccc6877243e8
Date: Mon, 25 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756154993
