Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B580429817
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781702794; cv=none; b=fD1dj2D4E/2HfjUo0FZxRFNj7O4Sdtpc7tStxBrUIo4j49N9DO9exXd0E1yNJ1ddGjyp8bu1ZiZ6UMaDqgvFmxl8GUhVSYaCTPd0qJM+yaw+eTIOSEBqJqzO+rwn22uiPyvm//dY+iFDO0+p4zCiCWJhZ2RAfCpdYkG25rdVgJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781702794; c=relaxed/simple;
	bh=nNFcesD1V4k+WKMy4Z5mOreBjbcZOteJ/TuW4UaYA8g=;
	h=To:Subject:From:Message-Id:Date; b=Snv9BftZPJZmzpQtGx+wB0iZu/Zames9zITdUL/IWVxSRaw+pHUp+uTxYisJaBB3mgYOoCZOLxEfy88ACJGL+U69Vgc05c5Y0sk3Xeae2m3M7c7hrd2yAcJXYir30HUBONmMtzGHNWALJKsyVILmCLkHs8l/wLmfPinQWLGwFg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnGNWAQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnGNWAQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9333C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781702793;
	bh=nNFcesD1V4k+WKMy4Z5mOreBjbcZOteJ/TuW4UaYA8g=;
	h=To:Subject:From:Date:From;
	b=MnGNWAQ3bi8eJmWQenwUlJSJBNoi6jOug8NTGKusiE72e/LQTcgzMfV3nv5R9KrdQ
	 kuZ/YQ+jj73JjPiUOHl8/B1CB57OLA+zM+SrwzrSGLuID4LHUL9/s4QKiNzkyKYIbN
	 uPcGEpFws71O/Z6Wi6hfSq3E7NmH4DM0q6FEkDiT+ndLWCN5U4JqwAQlQ0p16Bpvvt
	 IBDwlSFLE8Oo/uGqwh8sPpl+h5JSRVweJXV6mjCOtg8kZOnXMhBGCWAC+hObQXT2Pi
	 bJ2KBVenagUiSislwjj1dXeyb66EY2Czv9j3nG9WrYmPEhtYrX3VUOa/hPm9/2g5DK
	 lvBOciisJFEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EDCD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170279370.28274.15500112606799278699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ea2ad67a15dde481ac18b8bbf4d7902cc69534c96fd74a4c0c5c313399e5c7
Date: Wed, 17 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781702793
