Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D578340A76
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776551854; cv=none; b=ePmdZoMqTncHCz/8pmihwCdwo0LqAN38rmOz/ju/e55PjjQpQ1OlPQGKtv3x2W+DM/sbP5UYTZjj3Ik6Jl6bher/YvuGH3O2Jx6r0v8cNqbYzBmR2HAhWuqSjhSjBSmBGshvxeKEBD2k5wmLlXgKWpxe2Mn4oD4l2tKwKrrFgUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776551854; c=relaxed/simple;
	bh=aS3KcZCjKQK2xAMRc4/bpIxxb8jzdPcXHITNxuOzeBw=;
	h=To:Subject:From:Message-Id:Date; b=GiOYBNryFvgSM2y0H/jOYOQ8EpV9tAKequ0JI57oxgu04IkKSTQZiKZr9nKCxBgSutsb0UTsf+EDW2T5Z/lrujpZY4P/JVJ0kb7TO7fCHe7mpEjBwRUaA9vjIywK/Hrdv2H/8TIAf0hHBM+qeiY/gUeNyIAaEuUS5io9ctds+oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLX71s+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLX71s+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA92C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776551853;
	bh=aS3KcZCjKQK2xAMRc4/bpIxxb8jzdPcXHITNxuOzeBw=;
	h=To:Subject:From:Date:From;
	b=RLX71s+zm4G+L8KSSXxWD+azGb0NZPdN5fX4alb1x7398ecwaNoHcKRbl9FRHfTNJ
	 1DC87CpJouINLCexWZAngioAi6FwCYM1DObZpDEnvdnHd1ipU+T4Rar5rQHda5RVvC
	 wamlzKeHYhdP9kys3ssCglFu/2pbkPhBZOh2A3T88O436AcFxoD38sKnZc5463Nwzj
	 jFKNhkzohX2p+j1BCD4nFG+r/KEtbkJcYwiajJCkz3VcoVaq1YOtO3hgPsrB0HLw4z
	 Mjli5qBdqcW+W88MAY4MYzAW8fVAhdNBX5dII+snybvPQYThKvGzOeWDNogWdnHY/e
	 +7FzI0wqnF2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA011F99C98
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655185368.24097.2916214675372682346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658a5126f3dc66b95b2072c33e34ee094354253a756d9e885ce45dd1f48c7305
Date: Sat, 18 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776551853
