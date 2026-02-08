Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0627510E
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770594834; cv=none; b=ouYHrq27nlNRST1XaXdMDmOe3UMIfMwVN9pS8XE8Z/oCcD9u/03Q7S+Dsb0WEQn/hB/B39zEBPFjAIouJ/gChzfcIFMAChtGy3lmkTGOx2E83rYIDuiUcwoJ8H222GzYVCt0CKjjZL8XhxinaTjgzTm8DOq4I4oYDTrZwaDUqfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770594834; c=relaxed/simple;
	bh=PGSUoYH1k+nqB+YxfGMt8wQmZPnQWzYHPXTQm7o+l/c=;
	h=To:Subject:From:Message-Id:Date; b=VrIkZoxC09Hk2PQswlqGnLNabR3SC9wwitueVffQ48y6ix9D337fccDJXJ1h0jUCSED6op/gv6Fisyu/GmCGHDqUH4uHwk16GnKHnsTfaMin7/+vuEK8ZqcKpkt9Cc8sMVmiQ1x4CEAqTmaUrXzQRRQoA44JyduvuAmtzwkXUPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un7HYfX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un7HYfX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA26C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770594833;
	bh=PGSUoYH1k+nqB+YxfGMt8wQmZPnQWzYHPXTQm7o+l/c=;
	h=To:Subject:From:Date:From;
	b=un7HYfX9/t08C5nNu3vTqXQ9/05kGf5q+cZ8wrmqMVkDv3QK8CTAoazsZdqFeYlrN
	 lJO8VCUZ8lmAFqBZg+6DTW0Qh4uqcEa7O+4G1OejKiEA+qGAvCDyUxwFwbF2MN9gqN
	 X8mhH+zBswaEmhsJ8Bo3RKhjWSiM9Ge4ocFjTHuhNk/lP+vwfcHjeW5682oll2PSvR
	 ky1pN2uJo63nk1y93hS4hXYsKd380fVEPd+08K6yDQoUeViqImRCOIWMylG12tURYm
	 NBGXx01jL+qW2OyTbS4LXYMFVXkhp5Q/IVo1xyt4nQ+q8zeOAYWj+M6XvI+l0gaj7y
	 6MLdmDVbWUX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1ECEF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059483359.13047.9270129190338952929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e365b375fda8144622ff355908ad9f25a620cbc647d3836925df62ba6ca2982
Date: Sun, 08 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770594833
