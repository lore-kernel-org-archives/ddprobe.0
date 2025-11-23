Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C56319DF8D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763898714; cv=none; b=uBEUbI3rMReP2sVEoa6bDWpscTd7zzTwTGiJOaso7Xm7z98RIrQkNAeL33+aR4EuowhCQ+ZvZzlBliw0fbYIcm9pwXQA97o7hTotiwa9O6Fhrw5mZy95F9bXpgxYFcqsFlk4EXZ0evdJlrkZbRnPRIhpWn5KnU9lRoHsN6IFSq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763898714; c=relaxed/simple;
	bh=oUnKddbS7KHaMAfdMRmXPwu+qu5E5nVRG67ibs06j3E=;
	h=To:Subject:From:Message-Id:Date; b=etKRQ7LkW5b+W+n9PmxRv7LucaUftV6Koy/6aRv4LdloO4PdDh+9lMbNUVrzfxZZUOg+IxvvI3r5oWvaqEOkA6crvY3rZ8MKuWXmJZwm8dCQa4zkZ3g9GFA1flsw2Bv2wU5eUDqfPhXOOw3WH/fQ/ByPS/jf6Lpwzn25+7/CETI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2uDFPIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2uDFPIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C7C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763898713;
	bh=oUnKddbS7KHaMAfdMRmXPwu+qu5E5nVRG67ibs06j3E=;
	h=To:Subject:From:Date:From;
	b=K2uDFPIH0MP83Dcr0o86tsS8J0Wt3k8mdXecx1LZB1FMPehQXjIf+5Ev90vx7FVpF
	 HUHlq3GsDMJfqHH20RA90YDWtJAsHuSdJZ+x11OOPRMnRopJdzbgBOsAXS45P8gwj6
	 3rTp5CHeFE8ZN54is0w/+DqX2Tx8dg/pf56YBLxbKk6EWvKAibnhJRT9KRx9XTiz7H
	 cMScxM8oTQW8XthamyEbUmj5o1K3nOW84KDR18aMwEF7kRim4L6C6Dd4RLDz0lUQwn
	 DoyoTm5RVllodrcKcazz7RvriYiAufs2ORYR0MP+B+6cLbTN0Qs2kOphKfi+IuUah1
	 1Amn+kP8S2aTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B4CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389871358.31698.17576811783709944282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5762771810ae7e2e7c815c41e7cee02383221f24d0438a0d9cbfec830dff71cb
Date: Sun, 23 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763898713
