Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB1F44C7B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720115723; cv=none; b=bT4ftHdpz0h+Db7rSmsTfk7u+YS0t1WuvtO/Tg2oQm32PEXLVpKmvRNrrEyimGFIrAIepHy5XJihfcA7ys4bXe79GVXKY6AIUQ7SDyqCLot4W38YJ0KbHGvKOfaXRmNJfpqVaDAdvUEkHriSVV9f95nLrkUcUcB5f+0RLfwl0SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720115723; c=relaxed/simple;
	bh=hGXr4HvsqqZ3CTYedO1p3RS0MhOQUrsnX6JwmRrwrDA=;
	h=To:Subject:From:Message-Id:Date; b=J1fsrCQgcwJ0ZYcO/Kfe0u3uAWG64sUM5iQpyLAh5iVnbPoDop6/IDgd945qw2YkUfBLBmei/kkEOrTbOPuwy9a7FkEt9ne5Hgu6TNdGWP3vM19EgmcOD8dDRpbDR7fl8bRdXAkBfSr7ZrkpRIquw66NX4GQtYtAP0lLI+nYig4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LARnp6ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LARnp6ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DF8C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720115722;
	bh=hGXr4HvsqqZ3CTYedO1p3RS0MhOQUrsnX6JwmRrwrDA=;
	h=To:Subject:From:Date:From;
	b=LARnp6nyiaG83r+XdijXwOkj3v+x20+J3EWk0e+uB3kV36Ob4nQSN0QW2x6bTKDvg
	 QYI5zKx/RWtMYoNkt53+Ci/Bff28+mQSilHTXEw4aLyNXAXRUTiJDbnYZsBZOTuLmI
	 GyU9i0w6F+j5OYpYI3LFqvvTw6gWb8hnjxRGMq4LlVRqiwkvG+ZVbNrEgtC1uPKPTL
	 JX46WNBBxsxHBWBJMMfjCUwn2EOVCpG9QH9Sl/z+XP9LSgNfgEHm+L3G+Oa62Nk9Ni
	 YCe25FYlHiseqbOnZNNfQiuS4FI31Gge3pG6YTbgyCt8QF69LaEkPyOjMEXzibRrC4
	 eeUrK0ooJfjog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18A5C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011572278.16172.9820300254155454239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399a613874f0606ed341344ce8ebf4821884ee3e8d069a09ee56c78b0498b8be
Date: Thu, 04 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720115722
