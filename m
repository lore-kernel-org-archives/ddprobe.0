Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC0135E93C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776083854; cv=none; b=KjIZ67NmS8rID6LkyOc8LZf3mMtc/94eTl1H4hHYeWDnCoIONgUGAcbSkAI7jMLwPGOaNBiczhYK2qnlMIhHfo4G7J/m5UYLsGQB2kQkC072EZd9LdNk9ioqQD7hEQEIy8eT1VGugge7TlG8ex7LLvLhEuynVZisg06BRf4pYqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776083854; c=relaxed/simple;
	bh=/v9VesMJIIpJmZ2SDibqpX6gypd7H23j6UYavqS/rxE=;
	h=To:Subject:From:Message-Id:Date; b=RM1FsCZJg3u/En37/W0PflylHsaS7+DtRaSUiY4jTSH10NUbz6lr+wS28/2mv+ZUInKBrcL4+VENvMCip8BU2HbQ6nC2dJI2BKBZVqa9IINdfmyRxX0vnXzFNETQtCuSDyHfxrs/wQnpB0trXl4Ag/rpOZ2D41UFzlNEWeRnWa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwBY7Tg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwBY7Tg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F32C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776083853;
	bh=/v9VesMJIIpJmZ2SDibqpX6gypd7H23j6UYavqS/rxE=;
	h=To:Subject:From:Date:From;
	b=WwBY7Tg1DAm/wojBVmPJqrvEguN2w0YtaVk40GCX2WbgXhSF5Tvfr0MeBzdJMcraR
	 85BLncpU/YEv9gSpvGeEpWGYpJL6dIC3d8Ru/JIqI+Up35ek8H4GrSftgNvfUKsStZ
	 08aUhXXqyQ6EZttsXds7f2+YBdA4P2TFcT1PmN4ufyQwWFEvkqsXXMTkEIjNEVDCi+
	 NP4T20Ahq5pa6a7cFEkhmOMTRh+/a6aFz4A09OcNSLhBoxr99/joGzMlrK2vfkeRST
	 2kmo0d+OZ2x9D9hqojFxQNh16M+lxig891QJHy58Sq1egroDSHdv95HGUZfmJw+tR6
	 kY1h5sn88bfcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7DF34C4F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608385368.16339.5892295735693755686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5e715867289813a5eb9c9887b46703088c437449628ce4c4995cc9dae0e7a3
Date: Mon, 13 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776083853
