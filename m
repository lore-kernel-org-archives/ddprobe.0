Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0F31EE7D3
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744406393; cv=none; b=BlbdXBmp11W9Ft9GF+QDQX3Xe102Aa1tbh/JGfnM+AZ+jTjpEYzDagTsYSpaUZQt3L2I2lORELO6iItWSV0hMTON/fJfYw03ViNAYKtFauhjZYuaB2Ukoo7hHFHkJhpFE9bZFV+sHA8jnZfo/vG0VQiRjuqVD05pUkItElTRtz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744406393; c=relaxed/simple;
	bh=YSx7sTqb2vIMmIrlZFGBBAfm8KiRpSmFiEL4953d65Y=;
	h=To:Subject:From:Message-Id:Date; b=XfjRZk4yDRpU5WBcoWF4bRFVIoAHAwdT4SCEbASrHqsKqFXGGYSunNXicvmdhK/0KSRS+KEKQngur/EwqeABzP6Be9NYcJqjb0Kd2QGRXDEt13vAVuQ/GtZm05Bu/4RCeRCDGQQYi2NAgUa7ZXPUAC/ABlRvQ3HGLamPf6GEPi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvbdCxbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvbdCxbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744406393;
	bh=YSx7sTqb2vIMmIrlZFGBBAfm8KiRpSmFiEL4953d65Y=;
	h=To:Subject:From:Date:From;
	b=pvbdCxboU7q6wBgVm8tui7kycUkt5S5ZfEGSoRmlde7xbbcRIYEIzgm0BAivhE1Rm
	 wVkVOE0jD/MWv6SWmr9GkNI4mmP3suVYII58qExCL5YwDRzkMhHw+fzuh27YDIycii
	 ElC2r/xb6Kk1A6K5q/8l/DO9YjzO7IQAb8mbGU7T1GjHiIXWilHhd2jkSMkyT077Qc
	 NXNPYh+pPFSnIsFmqUiDf8nKDZ0dlkvpxD2bDpXxzTcPcKp3vLwj+Ki/cQLC1C3n8v
	 wdGAjf5CJaKL2KxN9qWtTcHAJrKMwoh4A72snH/lllzJG6iu1dKtEDVljMbGgbRFUE
	 AFUQUCnDd6pOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C09C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440639360.22114.17296244220053344409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e5041da158fcc7517d5e750bad8f8901272f8bcdb74dfb21e8e8402fb9b8ab
Date: Fri, 11 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744406393
