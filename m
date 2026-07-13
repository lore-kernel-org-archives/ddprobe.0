Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC1320CBE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783911514; cv=none; b=K7/ISwnvv4QBGhsgv9gSFonUeHxhR7UQEGIw8UBvvTlVyRxZbHiaiVof4SwsBNhzyEBm3zXTDjWL2vfWsyISnSJiFRB6ikSNAQ4I22nGeZs1j77/dN5s5jFhnnDsq5pQJ7dT0J8UbyaxF3oT87X1E5HOjoSyldf9XBkdDNnPHnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783911514; c=relaxed/simple;
	bh=cMkpLv0VEB7fPrQQbPY5AbcsQhgZdRfbXN9jQc7cGU8=;
	h=To:Subject:From:Message-Id:Date; b=S+EMgSnY8CuMVDgEmo9l3iQkgcuT/BkMul4vdB2pWk2KVy2MeZX/VGBVX4kT+P72V7loEDllvCDrgUBngTrXUS5HfQ2B4L5y+K1vwfQNtpsdKzV7/oX1Fac2YSmnqDHV6ybx8Ydae31TANH7Sh2IeT/WYv1pd4HH56F7IfMcydE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg5t4BkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg5t4BkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADC1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783911513;
	bh=cMkpLv0VEB7fPrQQbPY5AbcsQhgZdRfbXN9jQc7cGU8=;
	h=To:Subject:From:Date:From;
	b=Tg5t4BkTV41X0euN5UKYQ7tfi/F/xvVk7IFe8GMBA+TX5ub1HqCgT84km3qXzbP77
	 iU6lUiCXKTtsUn0x2QEXMdc6lDLuApejMF2tjGCur/g6uS5qeFJMxKNXh5nC/bmJzl
	 n0SVNBE1kZOv1ruBH6kO16oIpy9JYif0fsfLL+QtoIYxhoSGnbacKKWhiMRTtN60uF
	 rdQ/zO483EejAyf7oeid4zaftp+LADDu4H/ataJu9hsreYcS8KY8TK5rHJvINwZ9yQ
	 aiRnQcwG3y/UyOh2HpDWChtcTEQocQPh4PnkX8w7z10hDZQ1bBvJ/bubx59qiYwRos
	 O9sMMYUrz1k+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCDC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391151368.9820.9724963380679367577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0270e0fae55ece5d9a6fb8e5e25a479febec8a04afbb901199ad34e665666d85
Date: Mon, 13 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783911513
