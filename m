Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB00239E80
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772299494; cv=none; b=siwf0nzKrv64nrO2RT4+29C9d8fh2FD90B2cH4l6du9/dNtkjvFgDeOk8O/dEK/jwBjljsvESIlX3u6hylBJiOcMMUO2pQvbB+65KsphrSbEUXXoIgfU+OaPb9IJyHzYAOYlhLwNeawlmhf2BacXsFnfQ6bxCZp/3IHaNLNjcnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772299494; c=relaxed/simple;
	bh=fxyu0QBqHb4WX7HeP8V+1V8+zoVG3aL4fRtaR7d+Km8=;
	h=To:Subject:From:Message-Id:Date; b=ZGvq0phMXpLOT0sCp5Wr+yYmIspA91eB8wYZuem5X97VRYSgHZjSs8oP6u2+z/7bRHQ9Fqu5g/Y5qa2o/rHDcnBay1IThO2r5r4gyWcbamDwPbkhqUPi22Z6eSNQETW9GNTbtlLVE9qqnJzejeaTLrwPBrnF4gE8wbNXuh844cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBJiL+J2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBJiL+J2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD93BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772299493;
	bh=fxyu0QBqHb4WX7HeP8V+1V8+zoVG3aL4fRtaR7d+Km8=;
	h=To:Subject:From:Date:From;
	b=LBJiL+J2aUyAqmN4tzXYS1lJBsL8ZD0cZ2DOHK21JafxGPOFO3SuczlQbMBZJSMHb
	 tRYTyPpc50clB3IfmRgYg9nRFErssxTDw2DJwguvbqRqoi5m8FIi4EzkUjItLGF1/r
	 h8QqjLurFdUyTRnEsIY1e9FZBMXu9i1B0Ikls5rA7pnM9EiE/TWEthmLUnrn58X+dH
	 iMOQ+3dMnqrcJpIzZeyEAhOyNW8AyK484jfwYQ2H5AHWlxuIErphA4gGnpz0/6L2Zo
	 cE9zP6NtAdvJznOTPz0g3mkdeDn0uLCHWtnSAmfjCpX6GYHufeaqsCZW1ddJMC0U0f
	 AWacNMf3Jc0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A689FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229949359.29767.15871896392083392417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cd7a695a251b885e6af473e78fd7eb3ef06cea87b1145bd3f4664c3caadbc8
Date: Sat, 28 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772299493
