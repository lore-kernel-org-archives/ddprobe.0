Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD4B1CA9E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718689763; cv=none; b=mEiKyszWKLcIWl/q9Bn3LleiYkTCxamnEEyFoFUr5om46/7QdcNnknfJCspwGfbiGllyNgwFoatw1c/ii+FoTwHaSuEzkbOsOJmYt3fPvGogLgiDCRo7guNqQ+E1GMeyODbPiYEMorD9RGfwFxF93f3dBrbE689y4G1VpYOtBVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718689763; c=relaxed/simple;
	bh=kFFw+UgQ1g851t3eiml3yKMAR6EZWT7ZxuLGj9WrMQs=;
	h=To:Subject:From:Message-Id:Date; b=kXuxB8zzsYKBrkQwjJ/7UsanItc4HY0y8EM0El83fIhCAWvV3ONktF2owMPuyiEOtjNgaI8zWApWokqgQSePcojJZZwINHELVgI/5/9qp1hGXanZj5Gsvb0fmhHhQX0xZMPQbvS+3NC5mXXSuUTu2QsrhHqLAyCJi6RJbkQmGr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMh/2aRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMh/2aRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02858C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718689763;
	bh=kFFw+UgQ1g851t3eiml3yKMAR6EZWT7ZxuLGj9WrMQs=;
	h=To:Subject:From:Date:From;
	b=nMh/2aRbh+JqbDoxUlLNNTlVGGoeH72QOhmWrmZ7iL1Iw5bm5TyPMJuFlnmvesAKZ
	 BN1aDv48DM4dHlxvtH6snlFAXhYqVobdz8xaiIqEJ7kvHQMXX0PusoikQNy38UxDvV
	 hhB1SO3a/9sHF6OjBwdc7jlo3i/K2D+FMcaE6NmZLe9vjcbNdoiaIHTgmjp2vU5JDc
	 Bqe1wys9VjKkf4ZpZVbsqEQwtnOJLkRNwy5FgQTdr6dDjNej8kk1zVESMghjOz3T8q
	 TKmeZh94m3KZ7MZRKSFTvOzuHaC1EDlQ1xYojQqP65JC9mQTcWnwJeuwe6o5686kEZ
	 jkdT8RhArSr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C3DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868976285.29143.264721453307726945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2cb226b5da5ccf4e517435215be80b2771ce351849e2c21486ca1d41f48845
Date: Tue, 18 Jun 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718689762
