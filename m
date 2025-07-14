Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1134207F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752462594; cv=none; b=S/O1Yr/MqFLJh1aQJmuxnxIXiYbizgzzlQKEpRlGrGxIgiYBIavLMXHC4rUQLCTGZiq9OU92FmrZ6Pla5fc9n7PWbIK08K5uVTv7ckPjHdNePX1nGtyEPcWsn6x8Xl3Bu8Rw171nuIKWq6vgpUxa55Y/QWFE/zOEo0svsX/VIqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752462594; c=relaxed/simple;
	bh=js+RujEJx2ydmA0FRl05MfRmzPZfiqwj1/2NZt3Vhn8=;
	h=To:Subject:From:Message-Id:Date; b=aWilU1SE195K0eny6A7Pwyuc3gh9LL6CLyTNeIpJZ+oe1lFbtABv5CF6Sn8B6y4KO5bkqXpRpK6G52ubZuhdvWolncMMV42CubQppDE4t2+4U0zeb1O1jHrWP/W4GOgSUd0q3AAfFxlPyODBBFvC3gLRiCjWJ+mua3noSsmDb3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqxYo0Wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqxYo0Wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3232C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752462593;
	bh=js+RujEJx2ydmA0FRl05MfRmzPZfiqwj1/2NZt3Vhn8=;
	h=To:Subject:From:Date:From;
	b=WqxYo0Wk3xgAm4NFY9qw96RYM3SzR9b1WJnS98bh8aMB/TSWmZLQa9EZm38xzGNfO
	 XZfnM/3D/mlJIdVw+iUM3prKDudV0H3JbO2cWqwD33X17D9J3HjnPWHfd/Ohxdx8Uq
	 EDof4Q0U9fj3Pilpk/xSynkrqxRXvVXHIaiWULD93JTHWDsFBRIKbpr4GWz2g5GN8r
	 Y1i/m60DoC4qEwhGZdm9AE64sSC6hYf4IBSCooxom9CuAxDlGLUGhB2Ihv3J8tgKia
	 Q0nLf1i78OXEGQRLOzuZJfpoy0hQgLCGSfR1WvPvgqfayx8Ahk58BvWjjLEkQussG/
	 vw12YAw1kBoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9138AC83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246259357.3532.9561370622019808057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc01a972577fc69a895b0984da148b31394b9c61b0eba169446aad38e4ca8146
Date: Mon, 14 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752462593
