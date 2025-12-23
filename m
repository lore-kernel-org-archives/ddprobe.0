Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1254A34104E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766492634; cv=none; b=iHnnA5RehKOfL/DafT96gT+DzUh5rf69KJfxMbx+AmvFJQCQT+NmwXXIPfjzsceEpf+G1w88fs1lzFqgce7mdK+Gz1S3NnuZ9v+TsN1NieVClWGXKt4RUhJCvKy1Pli0VkC01u0ACr+DouSEDkWdL6etiQelJ+RhpTBmHLKhyL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766492634; c=relaxed/simple;
	bh=9RFncn9LngUjZ82rk5Xs5X2ysqItUawnKAIaANqM8Hc=;
	h=To:Subject:From:Message-Id:Date; b=jIKUHBSt+2N7nqv+Bo8rpO86Fy+cfljqbUSE6kTJkxsK+VsCTy3IrjUM2yjWVwaOd29jelXGYYn77JKs9qY8oagIRg9ftRqK56JIwJCxWL89XIERpr59hJrd6przSFy441ZM1NcCAvWa5uBnqzQhQfbVqhWbU3Q9VGkh4KKHvv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2LlHCiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2LlHCiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0FFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766492633;
	bh=9RFncn9LngUjZ82rk5Xs5X2ysqItUawnKAIaANqM8Hc=;
	h=To:Subject:From:Date:From;
	b=S2LlHCiGiuHLhq+o0opLgS3rUydUZMmyjhAjc3rxcK0EtEy1LMmSWnB5TKiS2RqZW
	 ktptuWcjraMhiyj8jmAz0tmM5ROcIdJGG9HBEo4Vz5I7nWUGxjtwnloPbEKGDlDpOP
	 Gdm6XWXzsPyLUJ+W7zfeeep9EU12qy8/e18xtrgbt4QAiMITgiL7TfMnWCn0RhvFzK
	 zQ8rXZYv/SPDCYGzZ69NRyJeG9VH9drJgFighX7e7WCyqbRhwcZZYyJEhQIMPYiKLq
	 YPiLXQWpwHfQlQxUU3MbY6P3eBYFNxa9xFXKC1YIK90JksI2M7zlR/79gog6VVugpi
	 rxiwxmmqQ1s7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90656E6B274
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649263358.9203.7138018534261350659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f4c26ccc6ea6aa26e4806e725d87ebced5eff0a2f01745eeacf6d045d941f1
Date: Tue, 23 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766492633
