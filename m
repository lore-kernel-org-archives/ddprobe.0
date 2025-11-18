Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F40922423A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763448714; cv=none; b=K0U0E+gL2leeXS8/vYibZ2c79jh0ROioVp8tIYm/I0tiu3PBZ9Ex8LqjMGrB9rQziTS1aHEW5JTwX3b4AphpdWt/O7psWm8Fb+An9Hqjbog6HwH6fo4xg3lu1/wvJYBsuCE2ikd5zbv877VW4wgg7SXYplEusThOdVcp8rBysLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763448714; c=relaxed/simple;
	bh=C/D2Z2m8XOB8U4YVwOOqN1k4PtFgRTYrRUWineuqGiw=;
	h=To:Subject:From:Message-Id:Date; b=DEndCK8bMaFwxTo/fV4cKVFp7YUGED0iAC1OEMF7/+yK+XfFX0uTir77laWxEOVohOJTuMTuUYTx6OBGl6MIWKTDykJmuXNprfXtl4Hx/BSq2RpM+/fu1TOqWGqGnOX26b10EWjhl6YXtq+NcCSNTP1CCKwXXbbkxS3LyKNtEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yzl4hRhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yzl4hRhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A9C0C19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763448714;
	bh=C/D2Z2m8XOB8U4YVwOOqN1k4PtFgRTYrRUWineuqGiw=;
	h=To:Subject:From:Date:From;
	b=Yzl4hRhmzf0UKxCVfBl7yuyNRO+cyJPPz6n6dn7OzJL2B/fqX8KLquVSSgYNpgRvV
	 jiyqop3XLT06MxZU2UIn9spPFrxqvKOOVIOQJoSaqMWZtp18VfNVNvpm8CjQLtCqTw
	 0SI+5eLOSfdQ3Mp9rDWWvrLU+lciihEMkC+RI1OyPsmEh9WdT6pZKytGT8jFxYq/mM
	 +ByT5MORO/iwMBr267Cerz3AYt7AZzHBgsmmBd2qEPOcZjKm0skiaM4RjHuWriHWSn
	 G3sSdhFxvQFnnobrSuTz5go9/r2UCRjl/zInOUofbMJnxojPWaIMStavNhXGxrW/1T
	 XCaDLYr6w7nBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F4CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344871360.345.2985580697715223707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c97c9aa94fe7ae4ab11a02637093deb49135d1ba37e26f214f10b796443531
Date: Tue, 18 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763448713
