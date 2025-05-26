Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5235317A2FA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748252994; cv=none; b=c3SnjQs02lE7473v6XVPiyZxDwP7lA9vX+464fzVvJDsPxsM0LemrQvJecXd5BABk1UI3jKYEWlwx5UJAJ8bmG48WrnCIC++4E+ouWGNTuTSi9e4jlLMZJSrptFOfmF9zJ+JXG2oixI2upQcq57ZHtaxfM7/Okwvrq+96t2mxhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748252994; c=relaxed/simple;
	bh=oJPtRkVODkM/YG3m9qs7ZBC/tiv+5z+Q6WTUR/sP/2w=;
	h=To:Subject:From:Message-Id:Date; b=baUGAf5vD2qNGVOVbkHunY3MBT9v7uO5pzk9gO87747cuxAQqZzGqYZoZk+A8CsOqTLr3rQ/dO1AJStZUHliQl/4HLKi04XtK67wYovT6yHutyU60jshFouKEErcXQ7G9kfdmg4djWCohsnYOMnso6RuqC9zut+h6F6hdeOJvAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/3gktY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/3gktY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748252993;
	bh=oJPtRkVODkM/YG3m9qs7ZBC/tiv+5z+Q6WTUR/sP/2w=;
	h=To:Subject:From:Date:From;
	b=U/3gktY1Y7l6WMfk4t3elfjd8tafyDOQ4Xqb0VKT+esByMf54OFWphBXPxEbOM/e4
	 WlYOx3Kjf3zMjt63MWlKYZhj4VrEbk9bvG9xUIHkbV3iHxLI1N6gNS2z4imBTQxO4q
	 LpMkcSPa56Nu3Mk+EsxMS5Iv1mxzhc6XR0CkkeewxNb25posvnfUuIy6rPz5f/bPBp
	 QRZX4AYUugpKnLsx3zgHtYUqUCRYUtwqPVAi6hoIU9ey03rNocwcKO9mLr7XLSMWvs
	 cEK+3eLJY0xR4RT82iDB5uUrxd8X/+qbJZLNIqQjD8iCrgsAxnykkalj6kUmTwwxeJ
	 H3yZnW8vibvCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91468C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825299358.22820.14827339527589658043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07b52162c73c58ccfcb170f38feb7fbc7735e3c8cc9b3bca0b4adcfb1100a66
Date: Mon, 26 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748252993
