Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A7939DBD8
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774550694; cv=none; b=ZaCSWHaERKoIg1Zy3gAZwSeB2WYmm1Y8JB/hQ8W4GUZoM9KYxuYV6pTHeXo1Cdcrn/ZtxKi7fWXx9k5MFyjzHDnF8kxSFXp2zgCzaqFz3RhkB585irJZ3iwYfJXGXzxY7VyV9bDCJQPBhh+Igj+NgyUdQxEozk0Vp7iEXih7zBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774550694; c=relaxed/simple;
	bh=APmuEucbCwGvvStoCtFrGVW/TogBfpjH7r6gLaC3AHo=;
	h=To:Subject:From:Message-Id:Date; b=GOenc9VnGPlp0zUXCkPHIOxeId5NWODtSwoSpj5aCddlxbZr7orey49zxgrkd0CxMy0uSkQx8IWl0pTRjpD4/snmDEcYRlscgkOAgLLFgr4lgx+UgnNbadOmFj6k6j+C/Lk3XW6Hl785bHWUaQElSm2JLic4SoM2TUIbg+pSKgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p48rcT5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p48rcT5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF81C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774550693;
	bh=APmuEucbCwGvvStoCtFrGVW/TogBfpjH7r6gLaC3AHo=;
	h=To:Subject:From:Date:From;
	b=p48rcT5FmuvIlHs8ZzSJx9L24FcEvJbvCe7aLGsMMowd/R5ZLku+bexvm9gVTqh8j
	 Qs6ffUMa/fg0b6kHScrqIjCpj12x7g9hglfKx/BQcGfLdus9uKR8+oKCVrWV+dmmC0
	 +VFqRVoP41bLBgsrWDHWjDIoQArFMZnEmUFgC6r8aljz7QEuy7rrbPmZc0Lm/o/vLQ
	 OAS5+YqKXv5FthaxBHoTxq3lXHclzVRC9dz/RXf5Cjq5UVHBWgr3v9EqADYL62WSVU
	 oM33cgJo0raxT0rPDIiuW69Pm6IzIi9wC+2ISX4bk4UNnwYcAwkHR/xHzk4+xmZXBp
	 E1a3IN1Xv0+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C46C10AB800
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455069359.689.8983308908879669832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c848fd0ac9f853fc14e207a3f721b25df0bdb26fc273cd4ada49b8c413cbcf06
Date: Thu, 26 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774550693
