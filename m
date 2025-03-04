Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25326657B
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741104534; cv=none; b=BJqbQKJ+10JM5Ic1jpOz7Nt3iq0+wPR+Za6TssINjY6/bRb1LQfdwNkeWG7KHlllUgVdvjZyNlXIRPrqG7yLXE1oY3KoQ1J8uiw9yGJwTjxXFStRlL/wE5KFNmH+NwPdUw/dX+iBancls8Isi72q+/I4XW1aWQt/fhnZ6Q3njek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741104534; c=relaxed/simple;
	bh=KRVJP1VxF8RvRITsHG8hVLfKa7OJDtROcAkQ+F/g8EQ=;
	h=To:Subject:From:Message-Id:Date; b=obOV+iEXT6VfeS70eVaRkPXQSNRFwn4axspJ3UgoSd9LEVPl0aNTVZM0CRtd78oj9RwwB3qcy6hVzGwvA/w3ybBQgt1fe9++w4uaIYbngFVU/97pSpwaigANK1/N0e0JG47ohT/bJPgSZaXcJGCcm45auSx6pyDPRAZKGZ0FzzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpIvF1rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpIvF1rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22EC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741104533;
	bh=KRVJP1VxF8RvRITsHG8hVLfKa7OJDtROcAkQ+F/g8EQ=;
	h=To:Subject:From:Date:From;
	b=FpIvF1rkjDf6xH9jFC0gdxZx7bilWoDXYXMu7o7QoHAW+5zux1xz941k1BDVgMogr
	 DGgUu8jNQM74d3802JGblzfffz5HI0RHNr9b+ztYGZYJ8SAgxcDz+ytqP5A/NFAA38
	 +9pfMElvj2dNKO07ZmGHl6YVq7p+V7Hj6OSXl4txBAnQOQAebtylqReD4ux0iLl9bt
	 NXi0aZ14xlYA3hTBTyilon7oAIlxX1fk7rNS8BHAgDAfmbsYybsG3ViuuQ/yWE6h8q
	 2TjvHzBHYc4AQ666gt5sihfU8rMgmmy8myInpN+slnuY5I7V+5OI58/n79f7H1FlZm
	 xFD8WqF91FEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADEAC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174110453361.21246.1304903069249661546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460fcf46d604735d51955beaab25edc4a46faa6b6a49870223b81af3990080a9
Date: Tue, 04 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741104533
