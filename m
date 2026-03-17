Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E562BEC52
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773717894; cv=none; b=YleZQHh3B3x4mHxSNQBuOrOc7qvrLL/8q6VGT7V20w8dcTuiDgTUp/OxnHkVtTImwuRFgaTLnpxUoS88dG2uiRZ+Y+KuwWUWb7Rkxe9JRiC+7/s71n5lzruDpvgnGI/PFXRxddWzM6tHbUXBWjrTymXJqQousAowLcXhJ/jJn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773717894; c=relaxed/simple;
	bh=n0aF0SVXWqZoYZHvoRAJuBqsUiduPkanUcOvprM8P+s=;
	h=To:Subject:From:Message-Id:Date; b=qNRegerIcphc9I9m3zandRqARmUB5Al6scQhADIXw8IPcwBskQvlq7vpADspafmw2k/0YaHJ8d74b0lAMdbwYMCkBa4gigFJf0dPlhgtEQQfk/ZtT1nvpOuwLZxu1Qu8iXKyiVrHQ98gO0eIsZZ5Q/3rjpx5lCjzXszFdCXU0MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCKgxfLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCKgxfLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDBFC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773717893;
	bh=n0aF0SVXWqZoYZHvoRAJuBqsUiduPkanUcOvprM8P+s=;
	h=To:Subject:From:Date:From;
	b=sCKgxfLalJawL5IOF4fNP4ePQHYHeOptYGs70B4BjyGK49TC9EQwWs1seEuIjuutM
	 IvdoR/J1cSouh3lDgQv9HPrprXs7qpAOZXPtdS0HL1ZFAl2qTQa6D1wXq4Qrc8/18n
	 BNc3Fj33zXOte7igRVVBKStyzQ58MyLHy9RoGt+172l6fKp+0fvzXyyyBQuvaEypQS
	 lG/4xgVpDy+0B3lWhiHdivoDAznYGVADUABGrZgn4dUZ7Y3IxVGXajFZ4ji1zNh+Jz
	 tarkzOD38J1UhRRROQt/DXWm8oGFEhSlpNbVrynCGm+nb59+4foVHtzAitbJxGnYms
	 hIqvK1IcTX/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF21FB5EA5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371789362.28873.3694157621771994002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79dd76a461e6aba56b0340355f91b34b9c532fac76c1c5ac8419106264d619ff
Date: Tue, 17 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773717893
