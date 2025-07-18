Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243E51E379B
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752816594; cv=none; b=UJ7YexjqVDQaly0d1OtVak9v0mxGb1GYz76MmCPq6GV4CvvWTu3K0So3SajlUwQzWS5oO5bwgA2rBbqmV4oFF7kFajPC94L9Vbl65IRVC7jFTe6+DytFABdt2VdV6j3FUqyFKiEt0aYC8SnNtUrSvDLdEJYcGAQZlsyglRibND8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752816594; c=relaxed/simple;
	bh=CR8flxh1MFn63xflCGhs5lI6Zdo0hO2HeGH2b+GFJMs=;
	h=To:Subject:From:Message-Id:Date; b=CdjRlJcqeqSusazx1ddTLaQCGPSWVim0pdWLK6h9BbwMENfPKcG/lq2xQ4B+4gIx3rYs9qLmEPg1uLE+CYkdpEQ3blhZgfAFd1T3YnHKogw7dH/XjgXAidZBk+9tMy5txr/djm7bxm7TumwduHHGnYu3rpOq1YP00aPSw44HWgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8TGJ3Jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8TGJ3Jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3749C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752816593;
	bh=CR8flxh1MFn63xflCGhs5lI6Zdo0hO2HeGH2b+GFJMs=;
	h=To:Subject:From:Date:From;
	b=B8TGJ3JfkeZM3Uea6jUJYwV/4507BpHZzeSuoXieT7x4kFiuxqKOoR+UFbOppsMTm
	 syovBuldAhC4y1xHbwggUNUwP0TA0lFvdLeGZl3CJvaVHxUV9xZtB+TNtmZAyVwbww
	 zkTo/+4PO0DrB2sp7lqH2ylubVf6fCflE82UtvMU4SxPbSERiQDi8X49qigPA/MTTG
	 d/Bc6hUIWZo7Hb6Xog/ODceI6wBHF9iGYwwvVDZ9AalBMzkKxyU+EvpR+Za4xWZGi9
	 yvOoNXOy/OKwUaF9xlUkOyD155B5XP7svd6VJixpljVK8eCcC2vBSklBTIIHkx2841
	 WcA34jsrnyDvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AFC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281659357.9992.11744307898076481162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0aed7aa7d0e1a70510d57a552a567c9a9734045ae89e98511988784936fb0ad
Date: Fri, 18 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752816593
