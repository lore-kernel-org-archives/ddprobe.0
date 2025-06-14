Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319222CA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749871194; cv=none; b=NoUAUJgc08BEE7V+6Oc/Aqjb2NjuPeH844J3KegqXYzq6knKejU7vy7p3BXEeU0QfRlDbS17viGakFG9NFkPkn98iMW9yVLe72qa0VpYuYhp05e6eD33cvNsOwZIXe7YVKGNvNQJsfjnyXvIkd7MsqMXtmJTf4/AZ7Jksox9of0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749871194; c=relaxed/simple;
	bh=JwYtIbkfshAbAK/prEr+7CSiBd/13edO/21S1qqEU2E=;
	h=To:Subject:From:Message-Id:Date; b=kqyY79zn/06NhjQUKgnWm5/O0t88gTVuMkpx7mFZG5CwIF4IFN2YXgsRVhQiDx/aQBt+HL2tBFmYDQkdSkFggwiMdymby8JKdIePenxGjaxWIxLkRUfd3NXOL7CiLSlCmrMkyZ+6NhlokV5LaLlvxEjnRHezjv2IY5FwQjkCCYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSaVCz3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSaVCz3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68BDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749871193;
	bh=JwYtIbkfshAbAK/prEr+7CSiBd/13edO/21S1qqEU2E=;
	h=To:Subject:From:Date:From;
	b=oSaVCz3GtYv45c+qUAkEiy0nX7e/oM4QLX4zVDzP7HTC3yC0PB7HRth/R9rZrpEDp
	 9UMFQDu2ddAohw3VhjwDDiAFiZlNnIFqYz+FUqumvtbRpne0/IBlT6ipkvdepWnjsb
	 ffEhpyXCHLtQ9XuUFCZqJjM9qu+toqZU2jU6B0FK42ZtBbCcjtuIbrscnaUKhgmOxz
	 i0HJcSV0cH6FfCLd/mZvz4b/jcNX3bxIL/1Ezaq6FLkhC1Zg+LDXZ0p7+gEQ1C3OfQ
	 oO4EycajDKyiIBmsErVZewz2YEjQhbn9R1YUXYdbNpu2D026MxzGBZrEAa3Gns9DkD
	 KMpARxbfT9MWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C38C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987119357.18182.9794437507953416068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e62a93df99b310b5abfdbfd2af0f118af486c88de57f237d29365296108444
Date: Sat, 14 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749871193
