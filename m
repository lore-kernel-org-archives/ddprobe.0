Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7033C8731
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784152114; cv=none; b=ilg81Uk0VZQOb/wg9KFWf+jtpxL86OY9xtQkgNa/eiV+25IVYp8xDEv/Z07/XjztzUKXfjFyFV/wESGYPE3MhoBtTdrQhriaxPNt9zGpVSzXRJEj8OjnXLKEQZ5jxkETIUmfvGFml6Gxzom4zq7+9ff4XL1cDeB44/CKJ39nEDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784152114; c=relaxed/simple;
	bh=vMpaca+2Ri312jAxZ0P9aE+SkD+8lTH3z+r3EiQM36Y=;
	h=To:Subject:From:Message-Id:Date; b=Vre0LJJFtUkVAwPkRA9D0qf9Qk8ojSw/CG53VhlkH3AHJKqP09sErqZW8xDfxHAq6HENPG6tF89V079UOKVj042k1dGWJZwSBNZN5NKCCj+ofPObSm3/BIjHqymGl9tmBEUI6//Iv/5MuDkJqAEsWJQvlUWRmIudi2XcPiwR1eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkxXqY1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkxXqY1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5659C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784152113;
	bh=vMpaca+2Ri312jAxZ0P9aE+SkD+8lTH3z+r3EiQM36Y=;
	h=To:Subject:From:Date:From;
	b=QkxXqY1VBtYV56q2zgqfyhcWDiXXEdVk5GYTo2rBGxp3SRpWC194PUCOCNlurYbYQ
	 tD0+af90U3FV4rgvOzSJxT0nFvZsdvIRYtPevivVzHBDMutRL0uNK4ZHTgM7q9qgIP
	 UxJiO9oHJpkV9k6ZJKcdNuv8l8vM85/5HN2hr+i1npFQhWCTjnMShlHrjy760Tt/yy
	 laGtEl8bT7umELqr/hCl2zEnC5Qs1Fm3aIBNaiypYTXshyj3p29edoEQdV4nfJxGDS
	 bBBaVE9w2DMmZQBDqbVbqlyfN16cIwBoy8hyjItnPTccxIofnWaVqLNJEbxkXzGpOz
	 My5HEGTJfhv2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAEAC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415211373.27692.8742104346338438968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca1e414c70fb77299d50128d101a1c595c731fcd753fbbd74c73c1be5644aab
Date: Wed, 15 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784152113
