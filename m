Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E9221703
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757887794; cv=none; b=jJSpYK6LdZTLHHmfOIrPL7mNySKYljBdB5KKu4d7aTtbJdglg1KQn9QQYZlcYWXTyffzPvAyRMuqdT4Tzw27tB+nE0d8NmwBXXVd1ZWdVWer+y+VHkzX6SwiwSUfMFkv+uXA+s+msjI1slEFikhR1nozWfC8xuxDoS2YMLneTOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757887794; c=relaxed/simple;
	bh=E8zE+m9Z/JLHozXO3ykNLzI6RyUumyWT3bSmNxdX58k=;
	h=To:Subject:From:Message-Id:Date; b=jOUGbCAtc/x5pQfHBp/FrN5Y6CqnNONXr8itfYN0VUWIvlbd1dNlX1WljwhQ+SEvgfDBADSMJL6tLfa29pRoWyqArKhojn4JWcal2oXw0OfqnYMH5tIqfnrezM78SxGN0p856D24tsrRo9fke+F79d5Yx/1Mi1u1mUpTPyA8lFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMNE2hQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMNE2hQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B84C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757887793;
	bh=E8zE+m9Z/JLHozXO3ykNLzI6RyUumyWT3bSmNxdX58k=;
	h=To:Subject:From:Date:From;
	b=NMNE2hQEWKkm3lIYlJ18XCi8sf6ZDj6kT8dAS7CHjSRYlEWlpHyzFqcz9D6UHtQVL
	 zWF3e53FAYl4NOX69JehDUpJheITln9yTcVBG4hT2Qw54252MB7uO5UEH4gzr4KeY0
	 02LYad6XbKfO507UR0CkGM9nSK1rf2jsmQjs5LxLy8Qq+XwbMlnKePYt3ykG/Rx2li
	 Mtv+oOw/eZCumCO8lWKgGnUtvh7z2OyRxkDqP8MiCdWBlhY8Gloa/CVCTcPyFuVm2a
	 LSegSBKzX3fs39x0z0sAsR7EkV/rqAn/obLzMcwBpuwjV6ay09QXlXo0KQSPZODTuE
	 4ddnMYsry3R/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B27CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788779357.1188.8915103936006203754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce84a7ce803aa4ff1f9bb552f952dadd7af588aa926691a03f93f790d76c145
Date: Sun, 14 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757887793
