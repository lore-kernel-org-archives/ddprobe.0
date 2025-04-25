Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0371B4140
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745599794; cv=none; b=jk2QBMMuCxlvCjVjaKLsWwbHArXNh4EZ6UjrHtVbyANDKEo2IDCXiHHrbaYRZYXCNg5rgdssVG/SINBvh03ks0Ve0976HVpZATrL2A+Cdplm+eCnDSsnHKlwoC1w2FY9XXUspwa2H7ChH5DPrLDlbpGE8+KeNQZ2Yy+kmAEYJxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745599794; c=relaxed/simple;
	bh=M/zUAkmZzDgYU21VE+M33y1+GqP8hSAmBrxsSW3FYA4=;
	h=To:Subject:From:Message-Id:Date; b=DRTAzvFkfnLmTe4dY4HMA6mHQMS80k2417MMTJQqqMaeG3LmlnSiy+GkRlwMZv3493vCxH7E5TklyA8S3ByxE5B5MZ31UlAyMU4Rfd6m33rDMsough2Bh/H+asOO2tPPRex97J6AczehbqRjRjRkj3CfFKa6GXuKdIi6Z4mwreQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDJe7DmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDJe7DmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC01C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745599793;
	bh=M/zUAkmZzDgYU21VE+M33y1+GqP8hSAmBrxsSW3FYA4=;
	h=To:Subject:From:Date:From;
	b=jDJe7DmVh4BjMp7piZqtA5kl8cbBAcVmwYJZaOv1Ot081AmjHDqEuCoRrm3jMBQDU
	 3D+ivhgADxQ0n2eWuEV55wdB8SFFWmm0Mv20Vg+FRsRMr9ny24C1omWY/VgSBmRB62
	 HCY6QvIa53ED8riP4apNLxWXOCORzkoNi8yukggySBoLshIvvvXGqQaL0NwJQKWiHn
	 wQoowT8cgEAuX78yVRfCg7rRpXVfYJMcyeZac6gyw9M2q1II1pEVzyG/iKNk5Yjxrx
	 zcwP358PYVlN5r/2LrTBm9AOkxG796CNjxX1/F9X1muh+6piOYj16BD1dmpB6i459V
	 T1LLmHTmEG9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51CC369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559979357.21131.6447111065693143264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5495d09ddf9322e37dee3a56e2ed02f3163b14133d7534fc623b6829769e4f37
Date: Fri, 25 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745599793
