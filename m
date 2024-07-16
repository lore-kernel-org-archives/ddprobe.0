Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B2779D1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721095523; cv=none; b=W98xZ4cY/whIxJWoKAORP3nUHOUxGxmtX6l1WEvTmVwTWfs1vD21/AylJCLnhp1mYYe3p2csq/m3K9lY5rnkwvDJXJeC4znxpLI1T9d2ahIW5ON1iCnDUwg61z7M5j32AZY2efLRtDIhAW4gKZJeFHgNb/Nmc3AvL/u7VSVXViw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721095523; c=relaxed/simple;
	bh=V9KRanOCNQIBjE5E2aRA7oSEtRKEjPib5lLtCaftxK4=;
	h=To:Subject:From:Message-Id:Date; b=XgrfEUNTFU4+O8M+LtBZ7oGIk+aHX9x4pebeyVz73cPKO0jY0tgg1QkHdYGK2VNeRU3CUNOSZXdPyQfrt/9toTTFq50XSVojFhhr9UegdywslHeP0dTckE3UkgeH9jpHIENDbRT0Dfj9DaOmTYMu0xnS68wvEhoXX0WGdOXpRig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM6aWerT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM6aWerT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E43C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721095522;
	bh=V9KRanOCNQIBjE5E2aRA7oSEtRKEjPib5lLtCaftxK4=;
	h=To:Subject:From:Date:From;
	b=ZM6aWerT97x+O4XyWCRWponKhLVTW1STXzqYJ3JcAvHLGYn/TnVQYdXsYblAc9Qg+
	 RDOMZZQJ9ydz8kU1dsgh2prS47DWiABFyUO202fAj0HE4Nlh22KPtjdvDmsCXghTrf
	 q6o/yApYJYl4Ol3yvIyIAOr6iMwYJSd0A3hIbog6L4u0sMGPShn5p5b/m1PvEIFwg7
	 pGXlcV586kGhD0lr0DJXPhRSY+cRt0ZaSgR8gGNeuvyVvWfzLGRS7B1lEsEFU8i8IZ
	 0ca9a7k7uvDy9v3H+RZcaWYGTTJAnYzDa1SoA07A4UK36uis8Qk/fiOje9jQmJZrxe
	 KMqg9LPZQSCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54F7C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109552280.17175.3552539267590186535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a791b6687b5e331b755ee4cdc7858522bda0f43b92029a57b865386f67053642
Date: Tue, 16 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721095522
