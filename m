Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEA81E9B39
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743542394; cv=none; b=jAimR7r3iQd6dvEad2Y1nQlVPJs2yvqjeiMtJgt8xDOp7L8chgmIDhBnueWH95qoIWePZpHrVbQ5PsMSYJwkOMfQdQpqt3WRSrj8t0kQkj5Wdt412NRePePe1aOtZPN5cbKriTXbiCFH2WdnfSL/IIanK4BVzZRre6kYrNRXdOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743542394; c=relaxed/simple;
	bh=PScmHI0MQ7T/KLL6kqb+GL738WpD35xQd7nzlcJH6/4=;
	h=To:Subject:From:Message-Id:Date; b=kzVxcw8zYjphegVNDzdPHmCdaJjEsF9iQ1nrvKJUvPi+JtlCNwf8XstRVqq32BZa/W8BLwkXaQyifDOZobMHBhZzCoDjlGkfrnmiy1wKZAuMMkXgQxHiWTQLt25lI2rx2ISkQHcJHIU8u8F0JBiFHF1d+4El1dFSaHQRarTINyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMVTfvww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMVTfvww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B450DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743542393;
	bh=PScmHI0MQ7T/KLL6kqb+GL738WpD35xQd7nzlcJH6/4=;
	h=To:Subject:From:Date:From;
	b=tMVTfvwwnwqbVjjS/Mcaa52Yggn+De/uwK9FXfVFE0733eOxny9iEBY8qiZ2JGz20
	 4jVQZoVyV9agOW7V1uuxCsxoNCP/PpA9Sh9kDsWhlOhfFNZHhIqn9JrTg8EC+sHuBr
	 05m7r/oUiLtfVbPhcVAhynKVJ8jNj7/DZNvY2HOf2WOZwq5bEIW51c+uBmshmo6pKF
	 1HPlr14+NybhWBo+uoHnFsGMZoqW4arSIlPzdRjb/SMCcu8Gr1KQfWCJfxNI2uxxDj
	 HBkURdRX3Au1DlbT0z6PrawuIGJjoq/Tzm5IF6aZZZdT9Ds9wmv12s8pZvKpmj0HCw
	 bYxKUQ5NUTdYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D62C36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354239362.21932.6456259030470981129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0c4bd7977a8e410556f4eac7578a7541ff77618f113a8820986b97f015ae11
Date: Tue, 01 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743542393
