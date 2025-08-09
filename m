Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185DF275AFD
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754778594; cv=none; b=sWbcmzzc/DzmbJs5WWX1Eotl0Az5S+RVR256Q/ziVdwrvH3pc1ZusLRwLbU61SW4erWdjB1rEPFigEki0Ov7Hk3j74NdJWgRl3oTDS46BGiOdydDTy8WTdVg79JNDqUwPKcF8WE6+gCYiDIYd+WHsjPKpZu2PW6WSNnUIYQH4mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754778594; c=relaxed/simple;
	bh=sNUk2068Gm4tceFmTeyqXXSLeUdUrxrCV4RlmtZWZB8=;
	h=To:Subject:From:Message-Id:Date; b=DtCZbzzakgJYhEykgxmIlP5Uz7JgXWmgc4gmZCW8bw9Ub/7qGPACskbpLQ0nKPxmTGGskt9vGBI7wFDp4tz8PvGlJTMioTdHsNzhs/L8kgk2VCeDv/0ODFH2cKuecx0xSK5Qg0S3e0PTOFmhVC3a/fVN8F059YKPzUiGnwg7RBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKXHcYcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKXHcYcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B47C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754778593;
	bh=sNUk2068Gm4tceFmTeyqXXSLeUdUrxrCV4RlmtZWZB8=;
	h=To:Subject:From:Date:From;
	b=RKXHcYcbA3tsTN69ORcHwCb+Z4Ph3o+mLkbn4p/BAJ184PfrDlF9+niTvF8fKFlHb
	 N5HtFtx9t8LckNSy/xdc7piXb6aN8oF8IvgvqNmUoWHTyBUN3Gb0KEmHxDAikZXHd3
	 O/he9Sy7Q0ZI9cPBtzeeoW9Ihty7TmiGGqXSkCGXvIXcH6Yx5twKKeOtWU+zGk2r62
	 k4pUbW96JW8bIYL6+lfEeKwQokKE+Zg3gSbMrIIfVTX/EBYufTPFAbP4TQxA/8hoCK
	 TzLiFvzouwWO5IO0hPVfa7qXQkzBxcGq19LvmTdc8VlmuFNs3hQaCdbZeHMYbjGRph
	 hzYbtsoi4DZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BECC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477859357.2984.16090617799114799815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f988ce3ccf16ebb670963a97653de7c053c82cb245827750ec99775e8263c5
Date: Sat, 09 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754778593
