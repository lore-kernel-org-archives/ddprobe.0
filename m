Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67EE185920
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744762793; cv=none; b=rqB2nqRr3Obh0HhwIQ7nprYzPMokJd265Tk6Y4PXpHAbdyCujf02qqrjNoFWrUDtxlTpME+0Uh3ivNyoFgISzGM+mF3OSKsgcFpbZcWueagvgihRGNl1kxkL2dJFysdBW3A9CvPcahd0tU8BV34+CkdyG34hQ8hW5kuffnDoh5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744762793; c=relaxed/simple;
	bh=x3yUoGiR7x90wR8sqLO7UlWFyFOR8ja5cJNq7JFU2UU=;
	h=To:Subject:From:Message-Id:Date; b=pYZsa4h/W/NXcbkV5oUU122JRTKYhpvBX8/AQHXANWo3B//pXl4HSIXdCYxV6h1qafqDvAZJgQDM05BtIQIxk7uPX7j7Nf6HyHr9AWa8cZmWyAuaWlOPdxdwFOJjo+MLVdhlsJWc26ib2YXdi0Ugied8uB+u//nlRCA0wDqIaKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m91xpEaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m91xpEaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F65C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744762793;
	bh=x3yUoGiR7x90wR8sqLO7UlWFyFOR8ja5cJNq7JFU2UU=;
	h=To:Subject:From:Date:From;
	b=m91xpEaEzabPgEI2c9ZGPn8+pMVmSh4w7MAdHzL9TzIelrzcbTsWYbO57wDK+ljuX
	 c8nEiaEelUl/UUSMH6NW73wEIWKUR+kEYuiEB4bRcAoYDVR+mIdXFyg1hZx6dVVUT3
	 HcAsB0z7x5uHsb3gh9/3wKqjqI+yU4CFTM/qk2HVt0RA3brpUm4o4JJO7zpmY0iwbl
	 CJrfHDbnYOZfMikGb0QAwpdPB26vLB3P6hac9Ow51TQMmZSgDhSdp3MCHKgqz0g307
	 WtTFWdqsce7hM4EKlsYRxy0QmcF3qrx6Afy8JbCmPNJGJBB0E+He/LCEpfhnwFH0z3
	 sOov5NxLKkabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DFC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476279359.2713.593080930327366963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1465222952689321e358922afa6cd1f4fa561093af35aa8901b16c227b821e12
Date: Wed, 16 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744762793
