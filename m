Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231441CAA67
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743097795; cv=none; b=PNGYDY1UgTnDTPI1fsvE7fWgAqN2v3xm+bsq1vKhbWj5NLQwGrRiSLi0xJJUi9kGycnFQURdw9xSut0CXDRTi5VEVlUmxMnMR/f/UgzyaoypY7Lmez5Rik3z9PnWQBW/5lr6By83GC6GDXuAS3xPrXEFvT2GX+uEv15qukL57VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743097795; c=relaxed/simple;
	bh=rOq2e0UZACbiRh+beSr1mGfeTo0NP2e6Ma8uVYkygqI=;
	h=To:Subject:From:Message-Id:Date; b=R7njrWPqNqmfrcSlW1EoA+I6row1c9HWCBHarirKW/xJ85s4kZ6Jtl5oy8ykWv5M+QG6dE7gZfVi+1Gx6Biy2Ttt/6Qlk6LH2rZJmNBjfdzyrZTrJownen1pP0q0ZGgJGLcgLQ3nd/oq+nTyrDabCm8nrOGj6tWSB7z68gh+QAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANK/3SFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANK/3SFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A80C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743097793;
	bh=rOq2e0UZACbiRh+beSr1mGfeTo0NP2e6Ma8uVYkygqI=;
	h=To:Subject:From:Date:From;
	b=ANK/3SFJlaL/QCQOcVVHdLCbmF8ZNy/+q7PU3cLbhoD2qg4oKL7BQKEA9yhIj1+s+
	 HfclcYG9XI6nqlkMybv/iI6SYarqfXh61zumep1p+KprWyxkP7u4fqCrYkaS+yMkkT
	 8UpZcm8WH8RHsMiLY0fgluJk7YRE9DnCn8Qc8YQ+7PWI99/yhHAM9VMQ6lWa858v5I
	 31OAo1BpMMnHm3F/0N7aO6UFILTWaP/gcHY+cYthx/PSzB+r+EYKd6a1kSL5WO27NU
	 8/ekQ1/gPwjeluPA+ztn5PMdwJXXrGrDDtNgSwHBQU+4CdOAAisE1e99F1hxNxwSw8
	 3CUgJRT4B6Q6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA9C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309779360.7720.5132565119330939977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3219dbd7ee9d746ed4fc77825bf825bba800f4877556e9bf65488af190a93d3
Date: Thu, 27 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743097793
