Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C87464
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236994; cv=none; b=khN5l/93SzbMZtEWhF5kGCEFtYmdTISl3zpewMAXo0dUnmO8Sd8pP/f1X1paXTmMsI98C+64Z8Wm+YyCM6BCGFr2fQSH/+zSVGx+Z3Dk4+31WWEitNIvlZM5yQuGjUBUAD6Y5bonqvGlOB/J6XISmKyESM8fHVtGW1wdUWrJsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236994; c=relaxed/simple;
	bh=K2zPKYR/3XPx0MG8GI45T3N7fQBT+8aqbSLMep8Te4k=;
	h=To:Subject:From:Message-Id:Date; b=g/tnHp3q6+pb7ECGx8/aal1mkPYEf2NOLAtw7f5z/N6vZyvoyY2L0RgKUAaJQHo+iJGKrMeN2LG+IyVRHGvj3El2o1dGJbzOMDZvBl46cg9A29lnRg4foxAcZOCxfWDuxmBCeFX94HegSmp1gT+gLcFhSbmmhaaGyZN1lCrzPuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOB78+or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOB78+or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752236993;
	bh=K2zPKYR/3XPx0MG8GI45T3N7fQBT+8aqbSLMep8Te4k=;
	h=To:Subject:From:Date:From;
	b=pOB78+orU5FDNqzD3jpCd+0nfVQu9ToQXQcU9TsKbiwJnfsBaI6HjNYNXRz+oEOoH
	 y8xF5n28iyuSD/kS9IOmqAZR1nuzw+ujKazpIj1iuua6q7waWhfake1kE3GYbB7iIS
	 sM3EQ6UqfFzda6+F/a6/6GaG3c8370WKjIprKnDI3NclbVK3qusK9H/mTUNPJhbTmW
	 L5hPP/U4k55h8Ys44nOqtyL1YBjB0i+dvrrdJgK1zSMGRs3hYiYj74/6aExXfOgD2g
	 sZV41abfJ4nFfvAvWaLTrzhP3+uhDxxv0O2X0bZEaPO2B71i4eEuczpu9yLTXCaQp0
	 a3EWDfhf+MpnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92832C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223699359.27866.725330145019342486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d924d0bebd1107e7891eacbb0bd66cf63c29e10216e9120f87da3700367f22
Date: Fri, 11 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752236993
