Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E9D22A4E1
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777190854; cv=none; b=VeJ+ByvhQPfB/Wy3oB564MQjyX4bZjwH0/THdnUBXr5sQOL96CZTKkGZbVHPxbvq6FqZ6GG+7jc9uNi7+Y+9BONlxtNIMMe7H0MOuda9vGXMVodEEri/c3oRvDbSNtBScvPUCMR4RY59qTqFbHjXZ1oqa8/+N0+chv8Ks5XwPW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777190854; c=relaxed/simple;
	bh=PT+otWE2W/Z+vRaSt826OeFS7qgkhAE7MgxCKbvIhYY=;
	h=To:Subject:From:Message-Id:Date; b=KfGhSZxZlvwzGcemR84OcoUJdvRxdX8BeMoM/k4vR4Ygqu+kIYoAlqCXOgp3sAQJYsD+Bk/b787RfeqcvMx6gGX0AYXe2jLV5L5vYNSwuRJUBjsVe8nAAEdzyXynyG2tHIbZfk2hcWUdK/VIXL1DXLZaJxniC197mdgDSSpKi2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um0eRwVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um0eRwVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777190853;
	bh=PT+otWE2W/Z+vRaSt826OeFS7qgkhAE7MgxCKbvIhYY=;
	h=To:Subject:From:Date:From;
	b=um0eRwVyyGK2UBVkPrMWm7NtuDQxQuQf0ZgS6KzrvT6AA0JJdqE0JUW+qaEdgfJcb
	 F3S2B8QtBwJQizg9rAxP6kT2o4AwqgsO/624MjnOGQEtDMDFguB6fQIWWN4LTMeH6W
	 fv3dhs1eN59krLQs3yjgyIMYGHUcm/fAglGKiARqi1jUE3AMbPWoSB02E47D3MP4QU
	 6Ai77mPYIVpTwTo7rM3h/UQqvgMOyqkLiqWvJc1BvG9eqtHncXXk5IuyPbY3O2HDmC
	 LcDS8CGp+NQbRWAKKLtzKsAg/7tuZFFVwDCG1lWnto2wL0HXF2EL+mf1NCMc0LUxLU
	 TNrJZzZwqeDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AA4FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719085368.15766.9958264023311758983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed9880105a93bb0bc5e5a76fa2494dc81ab5145453da50c68f84b6a0704d263
Date: Sun, 26 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777190853
