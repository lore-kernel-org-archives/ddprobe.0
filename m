Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1816A2441A6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770586434; cv=none; b=sspdso+iOPwmN5Ory4fydqDWn4pjw6qieDOhrXy0w1pKU8HabCbGowPZdbh5hPX1GS84rGosG4zFj8aaw+i9QTXyvUKTPQXRuBBjS+Y9ifS0JUqPJwf8M+eAiy5jtZrdVe6E1WBA1f9Ge9wqwc29KWe9LG0efHYSNMRnysZ0gX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770586434; c=relaxed/simple;
	bh=IHmwFsxSKgmCvE+699sFCvHRZ6AtLqdq8jS3oXXV6Ak=;
	h=To:Subject:From:Message-Id:Date; b=NmW/rQxGxZhGhCQiMi9TyivowvD1EFPHQx+R+Hlfr8eCUZLDWhVFtZC+lQvddWYa22fe/fftj/+Kvc/PdMquiPx49Sb5m/Oc6W9wL3JZkq4M79BhLC4CtiH69RZkt+5Y19r8LDgscPzviqmFa9dpg/ltF/n4xT8+wl8iJDx+mIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWgIgjjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWgIgjjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB669C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770586433;
	bh=IHmwFsxSKgmCvE+699sFCvHRZ6AtLqdq8jS3oXXV6Ak=;
	h=To:Subject:From:Date:From;
	b=dWgIgjjVzZJpbSwsANyDjrfDuynGxDw44/hvy3w6WvPN7C6ObJTjKGNWc6dGDM7FV
	 sI27Ct+I9Ntn46naxjYtjfp4DylKm/PGGM+OC5ix7cNN2l2CB7UybVrH6f2+SCv7tU
	 xiHFEGWigTKgMG4ltDpH2ZOGhOaGRhU9ZGHA7/5CkKSF2dL8s1kXeX0qKiqM7nhmSH
	 HnaIjY+4eTQ0MJpcH2dqszWFpana0XGK/XZpW1haYN48chzSQZixIiiVeTIyTogTJj
	 9uxc0Eue1dKw/8fqAjADkYjXET4qku0sCpt+N1JTkkXoVW2EmVDqdbft9IuNxBjVE9
	 7c976u+AlNetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78FEF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058643359.26759.5466975108003921650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6545b84045fbb11daa155fefa85122bde3cbd7e231394044f2f048ca137ffdfb
Date: Sun, 08 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770586433
