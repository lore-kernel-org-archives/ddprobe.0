Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFC510F2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766939634; cv=none; b=dfNRvRrQ696VaN2eKM7QofI3RmZQYOx570s32C3S5WnfysI1iD8te+XiV76KSGaL0UlYV9BDf2LVQwWCkzrZh1m9gfb5YRFyCGLL/zU5NMLBWAYkmhGbIfwKw6Ht+gHrjL2W9Kzd/TDuwuIgKDC9W8+w5f4O/SiK3O6ng+fDgeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766939634; c=relaxed/simple;
	bh=jDJJEF90Bp0ZcX913eksd8KGMQzr2U9hzH2XYAWK2cc=;
	h=To:Subject:From:Message-Id:Date; b=ljsAOB6cBT1SSU3UZFPuVQzcM9hNeB/1jDhhgE+cFWfMT010+IOhER1q5Vc+a9DJI/m8guEn8A0AnPh52rl5GC1PQ03wF+zEJ3pU02RMTByyFLuY7f/3ABQ2QdnykKfbKn6AKw1DtVeC5FSjKo9dLq2ijO2xzRvIsQvEJxjUGLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0KWXUzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0KWXUzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F31C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766939633;
	bh=jDJJEF90Bp0ZcX913eksd8KGMQzr2U9hzH2XYAWK2cc=;
	h=To:Subject:From:Date:From;
	b=J0KWXUznOXNhr4/is5XHGNvb4EfS+03w4TioQkkLXgoqlRrNq2BUeBFO872zWJxiW
	 RHjx/EPTptsDRuOS6q1WnQXoIz/xJTKlpPkH8aBJIejhzGnd/OIMHW8yo9O7ZcTqj5
	 upJzg37vW5mTQ8tWJ2KXeGoURCeOTrRtWkoRTGj8hEHCMGdKKrMNJ5k9Oumk75xbPX
	 UvGfkZ4Bp065Bmh03hLBYYeFVdpdxPC+aokz9j6dIk6C027t7yqh7B0GC+QXKzpl+6
	 MBt0h4KpLOIVbeF6wS6rO6Uen42fce6lJ9IoM1FM/00xqjjAjhNzP/xmzXWHHGtfv6
	 aiHgIhd6BdgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8B9D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693963359.24218.14893906263433462362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84893328d1ca2c577f80ea022ff89df277f5b819e890db9004b369389b034202
Date: Sun, 28 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766939633
