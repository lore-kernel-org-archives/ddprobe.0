Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B538232395
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777958254; cv=none; b=WwOHn1L5UCaQwfImbBz1RICAsDiSm5kkszwu0Nk4UvL5MAOWJbId42JbSKe8GoN/IAVRN66zk6NprBBw49HROHQxYwQ2fRx1SNUHGYCWUDujXyCgITQLj78X93Bz0kmR/MJl3OT+YAUh6Lyyb4HK+6UtgjSQUNcM3rhqkCrHwdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777958254; c=relaxed/simple;
	bh=YF4MeV+MH6SYhHi6Xvc176gmMKXQroVqkvsRtPJTy5U=;
	h=To:Subject:From:Message-Id:Date; b=Zrebmv19bqQ3fS4VHOXXFi5B5bc3Txpw1eoLtKVUijShzUNgeGzBNsp06JjYVSqvVkmqNZ7K+EvJtd1FY5zrfZMY7J7Ezlyr4aGlqQNvUHWpL3DPxZyezAc4uMINMEcvdm8TLboWuzzc5UbfK9yMsNAE+1U4Qh7HopAHv6AIpqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqmCizp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqmCizp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC551C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777958253;
	bh=YF4MeV+MH6SYhHi6Xvc176gmMKXQroVqkvsRtPJTy5U=;
	h=To:Subject:From:Date:From;
	b=TqmCizp8kQacZgbTmJdaaOvk/Y572KrP+c+unFmlFLzEax0KI08oTXnmhX+LlO6F2
	 N1ANsVs2TdaqNe5AOT0tl3VhU4I+LAexq72TcdwlO69C2TH9JPcEwxvstauQ6kSTvN
	 7+R1QneMcCfAEjiJDfGMEsfN6ezesHq9fcmk7BJqpM7kdjdoc2iBNpKmmJMtOBaV5H
	 XChD0WVIgWdFHuFT5VFDKQHiWM9dEKHPkSLZFw7ov9yn1IEQIQ1aAevh57qRqWWcH2
	 x0jIhPdh7/B2Eh2B7N1C9h5Z+/BiVm+Ux+Mvq/1sWkjjN34XaK2U2Ze3JvmWhw2ktO
	 jLbnYv5FVfmaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B2CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795825368.895.16697100567208684296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7af3b59ef1deb824b509eee25d9a51bee63bc37c991556b7eb6fa7e22f22e4
Date: Tue, 05 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777958253
