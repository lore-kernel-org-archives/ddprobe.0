Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3635D7173C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721068523; cv=none; b=gpVxsSY305bwESDmSzuEJ9q2Mk5Tb1hQ21l+8zqYp4HXOgtkeZoyiaxtFL0JDvBmOSJPQrzZgG/++FYBJOQoVWoSLsUB6BuOtSiSHLugEcEIshlFvHiNnnhfh51F+ENDsvQx23kn9vf9hrSsjS2MTJRTOvOTCOUK3KR8/NMSiL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721068523; c=relaxed/simple;
	bh=UZT164C0i4KJDygyurkZyz0b2hQDT5iJ5rIvnFtcKAw=;
	h=To:Subject:From:Message-Id:Date; b=VyteK1dXZlCDRP5ICafl9IPc2oUhoSNg8vY0/Xn4XDI4iGCzhdMCVkqtu2fHVdptx0eKEfhA5nAcxclPw9GKDWz0Wx24BNzJiyBT1d7ero9B7yDncsqn8tpfrIoPvR+2KXfp0hvIyF4+ToGdoPWzRp2a8dwVL3nU5Q/cvK2I6h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOKtuwc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOKtuwc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1340C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721068522;
	bh=UZT164C0i4KJDygyurkZyz0b2hQDT5iJ5rIvnFtcKAw=;
	h=To:Subject:From:Date:From;
	b=uOKtuwc3NTtaJXerT9T7vnvGneJ2uo09apWjU+yXGooQTz5enUUI18E+jC6z7zPIV
	 +Iys6Ex0BRYjLn3gHCDq2mCmVSLSpxvdFyG3VWDVEFTzGZ2bH56ZHwLaOzoi1P6dy2
	 dPDby3/YCIKVu9tb6miOmR1/yD3ZHnA5R4WBK+zVeEUbgE525tx44paNQmCnSntxK2
	 YgctEeyaUT774ZcUTf98m5gGdq11WujGkmNr3+9m2L3Fnvu4G+z01j3yfvHFhuZ2Al
	 4a8wVjEZaFWnc+nxTTNDhJCZ41UPkC4lCpCTCY7kzs1Vv/QJAB8M96UTboT22pR0vU
	 kD4k1MLITXV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FFCC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106852275.31593.11045742038723290079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f089601be97f1bdf5294a98c6710c343dfe7e0729f00693363dfc953a18b514c
Date: Mon, 15 Jul 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721068522
