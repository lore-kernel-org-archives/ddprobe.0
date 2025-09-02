Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3E8314B82
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756826994; cv=none; b=JVGWZsZxER2Iqr5KUlRy3qjqtz/PxdFseoBmFOmww07X4/YEAJvwM12A76RwQ/BR5eWfvfuxW+Fkrv750bvWELs4LPzJOwnsQ7ebqo4eq22zePioIilJN8d0Ykq9YJXQg05XYbp3DjDmkjm2gzlr4iqTyo/iW0/X5CfCPdjQph8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756826994; c=relaxed/simple;
	bh=Cn0l5xy/OpI1XuQWSGmWcTMQNl2Vz2DiLSTgPBMomE0=;
	h=To:Subject:From:Message-Id:Date; b=MQ8YRMoxUhgLvyqNGQi74mY89x8IllM9i5km1UrVuMLO48lM3pX881XVPRaKvFmjukrGk4A+48oLVF57SOhJQ2AxX/O+TEEa42FBbb/dz82vplL0DF1dWsuxyJpnQw56GCw5wwMfEbQ5TIa6+kdQzjpYbLsyNhZVH4H1E6jbzZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7XxhS+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7XxhS+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756826993;
	bh=Cn0l5xy/OpI1XuQWSGmWcTMQNl2Vz2DiLSTgPBMomE0=;
	h=To:Subject:From:Date:From;
	b=u7XxhS+ibe+H7dR7Gk4ycc0PEtITvfqRzGGqjTc6ZLEGx9uiY2p4RSG7uyRRmxicv
	 60q8IU2Q8jMFaSEq70K/43N56QblqwGX6XHyVeRlFkPvVZIT0Hn8daCY96Lg6754eZ
	 49wjT0B+6w/K0aI+rPAZYWOAAUmb/XdX/IO/t+eDe7Mi0FcdTFloLHN4fUfH271trm
	 dTZ3E0G/BMibUnBWZyc1qYjScI6w4YTlGYw8XvIl7gpx74ziNu4P5QOJ2Wx44Bec6x
	 mdzJh/k+z1SDVU2cU8VO8H31otsPWtCFz7qvkFQZfMJ6fJAXNRh8xD3RPKupgpnqPt
	 mAv46m7myDddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA7CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682699358.2761.17116695268880661751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43b646086cf0511e4659be65024e712e379b180e770b2346ffc8c0780b02e47
Date: Tue, 02 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756826993
