Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808139448A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772615694; cv=none; b=Dzme+f+bIH8c8/cJDqyFX6PDTYDaJ9JrDv/j0u66TCq/Lp2MGs1hEipNB/fvNVZoxeWHO6SYy23fEC2EwVX6nbBWHBDY1caU2znTljeQ2cdzNPnOcVgDrMksWxYX62qY2UhYc8cYvbiEsF5VeOTobn/hXBDTuv7aZd4yM7Q7A8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772615694; c=relaxed/simple;
	bh=2KZJdRfqEYMpjglG72bDPTB26I7a+Ti/QP9XZvhFTSQ=;
	h=To:Subject:From:Message-Id:Date; b=AGLvbwrH/436MgePGvMM+3YEWNeTGxold1WlB+ubTp3kRB6/v9lilP9dwwiXuaychbMdqBErNyoiuiOTqE1oLOLQ+FRI7gmrvs963hSM7eiCe/tiV20+rOUzr+L4Q6x/rKTDwwWN/Q8ev6XznhfEXMvNQrr/QAhqcBfOniEWOxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILXUq6ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILXUq6ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B396BC19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772615693;
	bh=2KZJdRfqEYMpjglG72bDPTB26I7a+Ti/QP9XZvhFTSQ=;
	h=To:Subject:From:Date:From;
	b=ILXUq6ZUk62gtuo+eGhkdLj7Uzyxlq5WAZYRTHsdOpyG/U3zgIWQHh6PujV7ff7ww
	 PvBN7FjxqnCV5GO4ZB7rcKVspUCd+waOazYLuZ2ohc248EBNxDS950LQFPr1iEVrnC
	 MzDg0subZKWPM6KoAM72RwI1a54NnW/T3kFioHnWZCMdYOPhw+xxPdIA0BQ+dIQM1Q
	 puQfEyr8S7zvtwLYQC2DwTur6j/GPxzrTWQ0yBtAbUG6jM7uULMZdWUzwQLa2Hjtj5
	 /m6vRg27OqGG5fBQ7tMwbF4nebS8L+qF7ApuRCSiDxCSgorJ3PORRQT7D5KKvkvBHF
	 EYEEENE/GmgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A371DEB7EB5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261569364.6276.13600243513009769526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc88e6109d48d52a6e6e5a170c8a1d213a4aac2fdbd82724044f2234e41d143
Date: Wed, 04 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772615693
