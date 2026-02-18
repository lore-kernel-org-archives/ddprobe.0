Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBEA33E350
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771426494; cv=none; b=X6Oks0bWB7QxCr9fUhaKr0c5YVqXZu8/NSr8IbD6YJJ4AGWyHYHsyowylNzluvDb/T0s0VLNPwHoHxKWKUlo0PmKiZh79BXPTIiaSxGqmuhtvnOvzN+hbMGuyfCorlnDTjjutLqcYgt9juiEdFoHI3PEdRJag3Mahimqgmo65Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771426494; c=relaxed/simple;
	bh=fK5Soqw233ANdgvEv8AVFGU3t4HtY3lkXSX/hKnbDM0=;
	h=To:Subject:From:Message-Id:Date; b=nM+6NnaxFfLIPVpHjr7SnbHM3DIoqf2eKaNO7G/A0jDZv0HzrqbGQgrfARwHM7Mni3GkukBXt011tojIoCS6slU75uui4P+Vujn/r4nD5MIvsg7vbvI465ZnqYkSbkKRgXpannP4HeLiyTHw4SVdG+A1jcVq69XEqcyWrRFyAqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/DtwZPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/DtwZPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4560C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771426493;
	bh=fK5Soqw233ANdgvEv8AVFGU3t4HtY3lkXSX/hKnbDM0=;
	h=To:Subject:From:Date:From;
	b=o/DtwZPcuQC+b5/AxidCD8bfEC9CsR2W4/x5CuxaXPKRGd+eFV4YAiEblx4DAUqVd
	 zBfZPdkc6MY/h+3OfkArQ8rIu1NkCfyKs0ORKprpXSfvNpyp8PcG+epY9cDwAkpthm
	 BT26KN0Lrr64Frs3Q4Qw4dDVJ3R73KB1ScKD5dhxDmgXPDmfvqNJXyhNrqXZ1ONnFz
	 5LYEm8QbLy1l2QaEqdIlexyITRcdMF4XkCNtAG9xOQ/dNQdi6hnDiOW3RfIu/k6wgZ
	 8yncwJFrf/l/Qg0ie8WP2LaKQF2hFnlr+CKBbTNw8T5lCn2cAy5XqJHSesQcebTL/K
	 05pr4twNxsEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7CAE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142649358.9392.17180014516885534681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307f81e70e5f4a70b7da5b23bf325b74973db123a1ed6285c269ee537698d76b
Date: Wed, 18 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771426493
