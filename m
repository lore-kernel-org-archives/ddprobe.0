Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42C1373
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764536574; cv=none; b=akkfU2J9Tbko+ZnjRP6NVLuhcijjgSc8WXuPZYBZmftdgLrYn/T84nIk2n9U0o7owGLvxGs2END4G/3W9fD9Jc6fFqD3RezNSxdz7Cjxe0GWxVYGibIl6dy2kt8/jpssjvvrDNG5+EIJLgCoyTtNu3EgqhXOuw3gcJO1w8S2jEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764536574; c=relaxed/simple;
	bh=8dPnbEnxYl9pCEAfoko340Y1cZVEt9XmjftILhfo3lQ=;
	h=To:Subject:From:Message-Id:Date; b=CJmcOXVrXYuTTd+AiHRP+BQ+a1BRxVgBznj2HyYI2MutspBSdnf8uzwEfp9ygA5hUdwJ4gHg8Ng+0quxxP8F7BZWzM4mCk+3UmWWCrJawh9JxEKP3/7Xbt4g5GViHBMEthdvIdBT9b6i7AwRgsmhLTwpA5kXGpXN7XcuBM5gayI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQlCKw/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQlCKw/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D4AC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764536573;
	bh=8dPnbEnxYl9pCEAfoko340Y1cZVEt9XmjftILhfo3lQ=;
	h=To:Subject:From:Date:From;
	b=uQlCKw/hINGzRV05xs4PK17pRu2D22ya6/ooFJgyrSjZudHkzTc6Mt1BHI286VbsT
	 c43Su1yl6AJjm3tSbrFKZugyzLdnEbZh0KtmGYgGtoEumDMu6Paccv6bObW7Nrj4x0
	 UiQyGiVYRqgCKa3VP/RgZSqvmfzo9FW5A3aeV/OZw5BAC3NVdzGIiYdr3mKBkHHPGz
	 hiLe5J622EgXGa0xoakWN0Tq11LH/q0aiYz0kpVwoShI1Ax6cJbhgzMaxhBh4qoKa0
	 9ceauqeci5sKBKJbB5vRBK4Af8+RiifycFXkC8c+cGxTICFbr5Rp4p+QzbKzZnCqCx
	 s4B56q8qI+3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F6AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453657364.16110.5796599037847839568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37256c47754260cef9a658cd6921e24811c01a34f354fb59cbff933a2ae7a6f
Date: Sun, 30 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764536573
