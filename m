Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B3B17A2E1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756049394; cv=none; b=rb2KSuL/mye9/M2tpEbAKcqtb1ZuQga52x2tl27TK7IxG9wqra6b0LkHOhZJQMUa8lAF0ky5JNFLj7+rEQ6dSk8lArm6OQ59brGDCxovY2kfb/b0+5AKl3uOhR4oM1G/AeMG+RfRNeisjSKDSBvNRTGBPD2XpjV24E9fYTXRAS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756049394; c=relaxed/simple;
	bh=+z3U9YPrEN7P7Gf0Q6VZy+Sh/3xORVIACtlGZwV5In4=;
	h=To:Subject:From:Message-Id:Date; b=ms/MCoAAI/1ISmCfi6wugqBGgT9FESBOKgPnS2/Q50gyLcCcY8SVAu5J++Z2Fz0q0NoY6J27znkZMVDgrnivgXUKAmYDa0lpaIqem1l00+5bUUPfEdXRzKwPvQZpBP7vRCKi2V7IadvU6fMzl3tARocxFrLGcYOB0Z9RkzAZOog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUVNMqqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUVNMqqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFD4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756049393;
	bh=+z3U9YPrEN7P7Gf0Q6VZy+Sh/3xORVIACtlGZwV5In4=;
	h=To:Subject:From:Date:From;
	b=EUVNMqqZU6v3xQ/ZxAWeYxm41HxW+9sbUbMUD8evov3u9ZmLNrJ/1DkKtkChPJd0o
	 dVPyZvW4hqzg9xfx0o+RB/Y5alY9M009LIMuTGqcePgFw0XYjYHVh/fodxZ6aL2GG6
	 BUWNznM9uAln9giceBDKFBk9+DxdTmPxgTLGXPQhHfRz7cSCfexiAzEhfJ8+9CrlZ4
	 hQVc358pzTM2oxJhc2W5K9N9SS3tMTChpptyQyL9y6K6Y13zOULAkzfrC998gYxOdB
	 TflD8MYFp0wv8q68hbrZvhFaV7TI4fbeQ6vlE7JMVa3gyUBHouRHidDzw4LCxw1e0r
	 BbrfwSHu6P44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFF5CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604939361.7901.8625096406835258614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c559fbb8afd8cb12ec9901ffcb2a9f146dea82caa66967153080c9792d128702
Date: Sun, 24 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756049393
