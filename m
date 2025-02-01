Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43323182
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738439154; cv=none; b=rfghYrDAgPUfOC/YN8HmHRL3QFoBHpYjfEcPDRafhhK98NJ5ZlYdm44RCLWpGrYIzVdC7rDubvS9gxJh0HqorrNWS1qYBLUb5gDk8De3ncuakHrqKWqtEgpPjSakGkrmIvIFVvfehgNCvzI6eB+9SYxIqCLF8f96hiBgn+u/fQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738439154; c=relaxed/simple;
	bh=/vTPH2TIx/ZHNOspju3COQje2OfEaghWvlPM3gi3HWI=;
	h=To:Subject:From:Message-Id:Date; b=QJR3M0Jnu4MRpUSMCqdItML1mc/AN84qr/RQt4sWatxFDn4RlL2MatD15bQl/gexzn/u9lQ7ybJf1A6n+UD2oGTeArIOSd4f8nJYCHI2EW0pzRqSTu/d+g84p6yfVhsZJUHrB4dybYO6rX/juQnu0un+1l134h1gG4qmARw+llo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwBxFYiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwBxFYiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EBC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738439153;
	bh=/vTPH2TIx/ZHNOspju3COQje2OfEaghWvlPM3gi3HWI=;
	h=To:Subject:From:Date:From;
	b=qwBxFYiTSDHkdTCqxk5y+UOg9cUjjGmyd+z922S7mfVPCg1CiXUunkzZEHG4Lbn7J
	 HToZwRc/H3b7KedC8mhooYA7xf5hBVH+/2dF0EQkaOJqQs4155sgG4XFZuVuE6zjXT
	 a8yga97DwOdDnqkJiAYxBh15zEreDOgaQD904GIuXdYgUIVxwm0oX5FDHVIWd/NxhH
	 Aw7yrEEGOstj4KVQEP5e24Ux/aN9LwkjZY1DumNBqN8VH78KdHOljxgUmcfjO8SPiu
	 uBP8EqlFtYTozmbB3hf+YHrjAYN3eDGUPh5UvEuhN+MS0x+YTwe/08wm/WR0xOanb5
	 YMLTKAXRK8mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B7C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843915358.31018.6893509672657148848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271b25e9d2c223d1f7167d7991f53d14d3360bd472eef93218cc65d05c74d496
Date: Sat, 01 Feb 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738439153
