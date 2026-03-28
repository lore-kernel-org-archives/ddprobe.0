Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E9E221275
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774689294; cv=none; b=Euk+xNeO++Exmtc0b0nHiQk/CCt/lJqgRz5K14DlaY42nwj7MwZW+wKsSXwlicXlBgkCfhi3RhVBEIWElB39JRPU4jsIgQJXsIZ+LN9MhXVwY9JxllGlTkXL7GZAWTnfhtsk3pjEaqeFuxCjf7f8nLuEVoE4qsnCiJpUEaQxlpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774689294; c=relaxed/simple;
	bh=/tGJYZlk2ZoN9XRRPr8KbaGINVpgnzhL83GgXoEpWIE=;
	h=To:Subject:From:Message-Id:Date; b=IONSVZj3BiHJBQ2XTCU0Ag03q0x3NTtSqcgYFmPXXtuiD+iVvL8iwobQAdJEdNXRoW+K43DPMHtG5ag5X17O/mZPiDsSAfJ0V8pfjvAvjJsV8L+67ytoHgS7SzDPFtm9buMTRFYDXx/hnaQn3dFQRI3FssjPvVMfNJ/4cUnRNq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1To/lu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1To/lu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774689293;
	bh=/tGJYZlk2ZoN9XRRPr8KbaGINVpgnzhL83GgXoEpWIE=;
	h=To:Subject:From:Date:From;
	b=o1To/lu+XROvfn2qZlBKnVb7rO4izgoDsLNVR0iSdeCen6NLhasfDc8+yVJYKtpfQ
	 foSSmYf5qx86PXkBnqRoXer92T0dKxIzjKm2eg9rVGtRpJowmHrsg5TIv8bM+i6DVU
	 +Lfj3jrY4IQYj/6FxHm7uIBZncNIO2QeZlG1w77+PnRm6UxBA62JbDAHqTTGDsawWJ
	 iO3BIBc0wdfcgBPjvM4TFi0VEapGyvMv3fUMfGoQX7Gx6coAr1L1oKm5S8vRsoQkzZ
	 iLWUE0nyvSIBmXulxS7lupCt04qOBnf0uD0x4dR+B/7mgpe+CeSsJQF73JgUQvWGDW
	 6R7CuzehnM7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A066110BA421
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468929361.11545.12592772461897866338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e95543021f367cdb6738ef1d06ef651e37bc4d9af7dd902a50e3954839da921b
Date: Sat, 28 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774689293
