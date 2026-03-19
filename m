Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F31175A98
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773950694; cv=none; b=euAfVphjUSlFnOt+7SUsswZZTvr9lj9KMU0/LNZI4bE7V08P1JyhoKNhTySWcZMbl2V2aLcBopvdC5DiJl9U+Ri3f3FoicOS2cGcVS8iUQ2dSEtdej5Tmni0Ee24eEKaqq0APyw7xWYrg1qjxjiAKvDEiiE96CCInmPxgy/EgFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773950694; c=relaxed/simple;
	bh=NNmGreUcaU0zsUpDnd+QXVwQMk2DjpjRpagtfDVY4EY=;
	h=To:Subject:From:Message-Id:Date; b=ukAI1Uyun9A23ZuoUmf5Ps+gJt4rnpQpxgRdWIfv+I2MI3L7ODN12gMd/OrxbTotMZGitTvLeW3HMjfU/JjHRK60RPnNZy+iUM/wJ75lzqdTy2erCpWJ+kXGsb+jCaSSx5zvBP3eCpcfFYX6wfcRkdvnrMm5hmi0C2NEnQjoSC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYwCQD+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYwCQD+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42CFC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773950693;
	bh=NNmGreUcaU0zsUpDnd+QXVwQMk2DjpjRpagtfDVY4EY=;
	h=To:Subject:From:Date:From;
	b=XYwCQD+w17GWCTzM5GYGZwT33QU+/uNx5wQh6uD8OiUZfRMuUnJBekX3MrdzxVIgE
	 1ykJTaVnU33+KHIAl2t7iUYJETwJk2cU4PMcqmIjO4ftAFLuSTSK13z5sLGJQnPlGb
	 v3SEOdZ41Rpfiw9UCBw3ogWa1U5cSl0vSrXlSE7MUaUt84bk5UCfq1G5U5VkFtK0gj
	 N/n/qvIBsWY944jKcYlQWxhWvb+ShxyxbHmKCca6uQEDNYNYmVR7o+GoWPjJcv4cO3
	 Q06IIBLw0V3VFQUVuL3IwjEBorC+TJ6KXrfwJIy7yFhclploCzUhFZYvwJSCbMDZAW
	 nYCT2Imv2UADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913131091916
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395069358.30096.4836651009542334538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db492cb41d46c81b67d64fa63def854a47ba59f71a2202df814e587245c2c55b
Date: Thu, 19 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773950693
