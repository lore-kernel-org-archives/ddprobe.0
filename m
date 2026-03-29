Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2414338FA3
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774806294; cv=none; b=b3M7ZsL2lHm+q7ye1ZhOG5zUd0F4+hM1Bz6QlrHfxcY9AkqncMf5f0ODz7cYX2OiFFOR/KIiIoPU11rng9Qw37/jKXLvuAgdZ5/M0BnuRZ9kMTD0lU9uAvgeoZyRFs/0inmGSpoFMTWjvlBQwgtSHp41wv4YIztSYOBDeFvTiyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774806294; c=relaxed/simple;
	bh=yulGJX23J3+w6iKF/v0hUJ+/vF7yE+aqX0xSbvtwtOg=;
	h=To:Subject:From:Message-Id:Date; b=pjcOJwAIjDuQwfFgFdDuHr6041T5SolLTGUK0BThdNOEkq5D0nj3cF+PNLyisLlRzdMCWbPwdd3b4tqhMwUgN2u/QRwPDy3XjseV02mXR150bYJYDlrtfPqnP8OYD0NpFeskgkWSKiREcINkKBisR8Uut1DAWui7kcYWND2L+EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bE5ZBsP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bE5ZBsP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7FBC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774806293;
	bh=yulGJX23J3+w6iKF/v0hUJ+/vF7yE+aqX0xSbvtwtOg=;
	h=To:Subject:From:Date:From;
	b=bE5ZBsP+RERHh4Tuj++vZSx0BtJgqP9YRl8PEVPlF5/LaeaKb2xfqOnHty2lHPXmx
	 318+m3YXFj09EVuCMgMzlys3B2n60QLDWBhVP25Fy4Lx7xxGtkWM4R5NhZbI/XbscD
	 AfKNdI88dFtTm4d8LPByy2IK5Y7THDdxqehB0dQZpW6YozDn05SBaJsAwamb6sHw3W
	 KGF5+xuQdSTZWs/Zwl09EXu+A4x/iuytdMNpp8wv4v+RN1npZq2/7GqwuTyMSK2uNk
	 Zr1CS3cmPTbL1vSQX1BlypR+NNn9TFN99arnHCwjEGwQcfGAYJrDUacZVbcwoSFfz+
	 lj7wouJFUTJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94373F3D611
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480629358.25507.14447270071115459409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e1ce93157175a849c82da1a74ebbcc60e73398694ff8fd44691fe70c85dd42
Date: Sun, 29 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774806293
