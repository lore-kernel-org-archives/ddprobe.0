Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7F1422D8
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739460534; cv=none; b=CdOyj8beRs7TGga6N9CadsPude334SRtmVlqVysuKGb1XLabs/p6gJcZOXrZgwd42jRwfJKXyF0NLtX0DAAs44OORHbWzo0Ekxsut50FxbsGvMECVpjw2z3qPITmHbXnhxlRPo4Jtinbz++bnhS0rEOlEQ26klRKoQRAlcyyw48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739460534; c=relaxed/simple;
	bh=4vg/XdvtEvFVpRtxmtOBjjy8BHUCSJ2JFa6saM43GQ8=;
	h=To:Subject:From:Message-Id:Date; b=iJK9/3wQRXAK+4yGHakEl1DFWhnuT737g8xmuh7dO9FJRQBxYAZUcMc3tvXA0xuCuEDB3TONjkFlT0Lsz1j8G864bxVVolC55sBx18JQ1YPP/BsP+AVjvQIQAb1eB4gIFkZBrsK2RDSYvyos6d7sDQVumn5xLSc2HksZ1HOvfRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSem0sKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSem0sKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ACC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739460533;
	bh=4vg/XdvtEvFVpRtxmtOBjjy8BHUCSJ2JFa6saM43GQ8=;
	h=To:Subject:From:Date:From;
	b=dSem0sKRncvj1BJ654QB8p3KmsT0L8+qBBj9mL6sbNzxvkOi28uHwZPtQreQgOB+o
	 qq0mp1XEGmd1lBUa55YrglBzfm2/rh6NGr/cadMl6AFRCgmtAF9C4Q8kEJ8eYBJmAo
	 HrQjgcUeGONxhp7qzmtBaxPxYof9SeyF7yF1/CWT41HvxOi4WsmUAYmN5XGb7kkz1V
	 NqT1wQcft6W9qnrHUquVEWpM/uKW/bECsNNgJwXB0tgxB1LPmy3wkbKzUiMIjFiOSb
	 LHVvBPSvlaR7X3LTN4TGuW1Af3YM0SirTzCEZ6ic9RapcdaHKJxQ3xovw1LyoDxXE0
	 2S5hlUokzO93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6BC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946053360.10659.1722355731603980225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ceed49ecc2a9f21bcd443b6edfe2c14b9a19ee536bd118e8187d0f0d74b9d5
Date: Thu, 13 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739460533
