Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB8212DD95
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746934194; cv=none; b=JHCvvw6lwgVWZMIANI/nqUjvvmdl6gs3dCQ4a+ogfWDvg2Yv6mMZZllaHlJ72qLR4OcfjLpk6T1e8Yw+wHMi4fpSVYvLa9igA8ZRhTZt1M5p/Vx5yawxoGcTUV6W76Z1aGpGBhq3I2UKsBrQuJnc3Lx7GV8CV/kvumGxegHuiqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746934194; c=relaxed/simple;
	bh=mXX2mpEZRxSegAVz+QS8s/nz+OQ0ZpHqvkjXdJCGyXY=;
	h=To:Subject:From:Message-Id:Date; b=FIao3/O0FKEMIwkqJx5H4AxTJPQ3BqbtSBfxFDmoHRlCSbLPMg6qFUZ2c62rxqmEkv0/0SAI5hWrkkG/5W0Vdenxq5hbewS9HyaZMfLjG6hW/buYES0ZQgDQOSuMp2X2EsPUsoW+qpBoSlPWr0zsn0d1nG1e1bkRII8d0o/0w3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr1hB+dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr1hB+dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9784C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746934193;
	bh=mXX2mpEZRxSegAVz+QS8s/nz+OQ0ZpHqvkjXdJCGyXY=;
	h=To:Subject:From:Date:From;
	b=Nr1hB+dq72WpP84WHeAI0NczPJKQ2tsQBe0dPkcodxviCX1c0HF3k1BUVK4LkgRmm
	 Y+kTu/5TmTNU7L0MHQIh2zG5BPpWpooNWm0JjtuPY5W5Tb0UcK6PA2RmxRox3DPZJa
	 U1CbMR6digO0jxbzh2+V7VhLSX1mnbRHOtmnUAejnuV1M0SonREmoCgB7MJGX926vA
	 SIBuIkFrTjn4KGk565rU2ZUZKArDDX37ctasK0jz194szrVPstOUz2hnUxC+kRgFyP
	 duDnusjmV6Jjyv7kwAVyqJw1KHMZY/DKVTyvozn2dwGQ4BsQfCZZ/nPcasoubajgaV
	 tsHmmaYFYiVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B75C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693419357.6264.5194806214038436485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f2c2ab0afa57071730e4a2386d49b3474f0809d06eee594104e0226cff3180
Date: Sun, 11 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746934193
