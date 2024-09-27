Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2952B175D33
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727418354; cv=none; b=cTLvI328e8n9BD3SeO6zL4K1N2zjlrqjDPHZohdC0lsVaHXj22+hghlzyjvuPhfg9G9lQNGJNuh3e5i2oP0+W63D2nqdq66m0WVhDMgA1D2oPuKZ/4fP8rfIxLQtBl5lwymkvXPkvaAYQ/vpUuAvQ/G7p+BFfm+aO1VM4kC3Oz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727418354; c=relaxed/simple;
	bh=EFd+ujGC1z1HPW7F4qCgOPQVIgGgTuqxU80T1dCbKD4=;
	h=To:Subject:From:Message-Id:Date; b=t3fG2pJmQi7Nj0vhGLzvWOZBZ53cMo4B5aTGX+i0XtHbO63m+Z/wVya81QKdHAVN+Z88zTLEnSoyjMEgi5bPV8INeyNWS8paii8fIfZnc1do1GbQMLsuMqrY6HqaZ3YG4presXwSEazDVLu0AAW6OZSrQWVl6ZXt/okSN32SjiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4bWm5Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4bWm5Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4628C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727418353;
	bh=EFd+ujGC1z1HPW7F4qCgOPQVIgGgTuqxU80T1dCbKD4=;
	h=To:Subject:From:Date:From;
	b=m4bWm5IqtxVF4ggjAk/rzsCwUbDFgrI3bzFxgAFcbShmAXpP4zpNKCzbKcltmuf3g
	 zQ61bfTKIH/KZD89mYMMzelzZgnqOFMBjRJyqYgdOk8eDTtbIC7WYOJSxSh5/Wr0NO
	 49tqvPmVE4UPV4YUF/RQVhyCiT5pqj13YIkElIujrsrHpsGWSierHvTq5gWl6qJwjE
	 sWZbIhHPSD5ss2CpZ28o2jyI9u5Sg2ZEEKUdopKtZD0oi/F+11MBhILjSQ7tL1538o
	 hkLrAM0K3Yr034G459DvvAm2zDI135SrVfpd3f74l3hWxcp9Ow4We3KWdyUW/u2xxa
	 pbM2Qx7loURHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0071CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741835364.16353.145946980794493284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d137fefccc6d202286d9c6da340316b91befc8d766248cf61126e7ee6763cf1
Date: Fri, 27 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727418353
