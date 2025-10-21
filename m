Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D22F23815B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761082794; cv=none; b=c+7CjV0EowxxmluIXZYqmeV6Q7A3BNriCXf/3P9WN//L0Jc2GUk7N52lxRs+RAtMlzvYuQsF9oc0FiRIZH0ijBrZWY/ISTISVW9q+t7yKB3kzJj7xhpJj1Jf58h4rYu6z1xgBUdh5uAuYAkhIduHeGX4I47BN+m5tl9uVVAldCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761082794; c=relaxed/simple;
	bh=+ahXj3Lj1yhLgXf0Xiq1TWo9cIPvllWnLPGt+oKBf3w=;
	h=To:Subject:From:Message-Id:Date; b=tBUNMl9kn+7gPjk0uHm3HxmoANhCo6w1hA0dVDbIVeHmZhbJRM1EUVWQtwjrcc4eSwACKgjzWVH+XA/1wi/J7UZ60TA3UUWac9xZcuh2MmKxDUAVtdd6mM8+Z8baK5j0ydVOcAFtg4/jsPfsd1Z5earWSA9NpnWgkj07/Mp+nvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiCU4+Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiCU4+Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A853FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761082793;
	bh=+ahXj3Lj1yhLgXf0Xiq1TWo9cIPvllWnLPGt+oKBf3w=;
	h=To:Subject:From:Date:From;
	b=QiCU4+FrDZHeht4CPOs6uqr9uqOwJIzUmM7871YGnv741+nEiOMTabdHSCJBwtPVR
	 aWXzmIBUxXrhzsFN7tOWVXq0YMkO9vzmxkt/kLb5+vKy2eT7+1ws/JjShXAerzBQDt
	 Mv+uOicgOFJW21IRcRiBivcfbNGV2F/pFm07qPt72asoW9DJAw4NJ7+eJMGFplACcB
	 cnjL7jZJp2U+gzcYD2CdAcRPaJJuVn7OFkf/fVXTzgfDxlaPka3xYwWrOhL5mTy0W6
	 khjxDbUF6H9u200H3qi+lXIjHzNHhhqA5seIlpBZy2r775vDZAnDsCxj46PBG5+Yny
	 XzPpDxn4JOb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F4CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108279358.8429.10047148813962209116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dba755697813068cc65566391a2285a219597e887bf3504695529db55567445
Date: Tue, 21 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761082793
