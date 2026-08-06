Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D11F64AA4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785998434; cv=none; b=X524iOL3TkbMRwa5x29SbZDeYaZCyxt6+7ZQT2j4kDmGtZ+wJL8dVGm4oHywTjeyMRyACg9lP0fxJlDtA+Es8r0ls0w8e+WdiPVXoo5ZkogCGUECJ+zEH4EuCDD1HPqt58P0VgkTrH1ZsLhRE/lEIeqwgXTCM2gd7MzpfUdRIaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785998434; c=relaxed/simple;
	bh=mG088u1/eVsW/JWTlvph/fW08VguvFczqCpgAWGa+BE=;
	h=To:Subject:From:Message-Id:Date; b=P0DMx6MFv0NhCXIrCSjTJJPvS9H61wkXRZBfXHO8YsxFnkm3ikiH7oDbzgBisvsTIDIicarpuF55jaxj1QIFH2dTYhFg7/yVKRoaMymn2mPQXKDhEPaiA+dTgF/rqTI7HeBSuhybuLLf9RFR+qx+fAs6GOLnnGFQF0nYQUHfMMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4HWW6hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4HWW6hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0F9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785998433;
	bh=mG088u1/eVsW/JWTlvph/fW08VguvFczqCpgAWGa+BE=;
	h=To:Subject:From:Date:From;
	b=s4HWW6hAOPNo+INRdtc82TF6Txm/1MQNWi0YS0/uKqlHkP9FEA+m77Ykg/qkXkKeX
	 hy1Dr2HzZ9X1S7vVGvYVjDmbgAc5Qy6zLTvuNV+CHZdN0lgdVsdQ5T4XfqNQ1XggmP
	 gUO0MdegKGjv1YqQJKzvrDTwGtV93hJzYCU3DJAa4kWXPJgAqEBOZ4J3U1j1Zl0jKp
	 G4NbO3qDVJoxKPVy187F6waIM1mCTo2D7NXH4GLOVnIjXGEH69VYyG5O5WkHUeWsD+
	 /QjYAKEjXhPcQp+hwyhgXqlD9bej2f/n3Fyvthx3gDfLJT+XyLprprss21ndwdEZG2
	 ndZiJsksi0/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3944C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599843370.14677.9468990762017298793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968cb279c0c7b94dc5d51810130510906913b1825b37f57c99e52c504f7fafe4
Date: Thu, 06 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785998433
