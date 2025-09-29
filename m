Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1572AD24
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759153793; cv=none; b=f1ANjWA6/npPQeLsQPUzJ/xSxxiVPrrRlt30bWsGZgVUaO255FhtCxZsYr//FJN2oBsbo2INlpWrUbW6OwfIAJ/v4exbpd6gPzdqnM1Ps+OtO4+0BKcj1gOEKLxcBCJ1s4unms9+QOs1aYZ+Y0PomfCVpYwBskkZSIVPC3TC3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759153793; c=relaxed/simple;
	bh=jEtsHU52Ra9TxSJtSgAhPGIKp6s/vnT7hzX27Y3d8PI=;
	h=To:Subject:From:Message-Id:Date; b=KL/GSxtk5OOjACK1MiJtJhOTk8VgBcJbNIq9V+QILD8qc5qG8ByqFbwLvlTsyX9aeomRDodjMIJLn9UxvNNQgWgcnLBXzUU4hUKAeNwkfEgUdreuEWcJAVuw45ebhkMoepCzorm9bW6sAhYdijwg2+ajOBfSjqvMxGLTWrguYMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCmH6fdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCmH6fdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0F5C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759153793;
	bh=jEtsHU52Ra9TxSJtSgAhPGIKp6s/vnT7hzX27Y3d8PI=;
	h=To:Subject:From:Date:From;
	b=hCmH6fdLki9yNfSYl6oA1XZBKm4e4SRKgFgRXAGNgDX+Twx2OHL9IrkHbvzWgxNd4
	 rZH7iVdtnuLawPvV6m7LE/ArPpy6iPz2ezTeqlKTKVJbRn0W6NUm/iPQTQ6RGSUrEO
	 F2kNLDYTjS0iF9j88G18GmxEX9/3p+EQ4RWOthi2tvn+8qtuS7QZSOp6WG4yfA5Akd
	 BRLyC5fQrwWNLsWJiupmhZg8MbVkDGapaPZed1gn0I0jWPfS5BV2z3T53sqb75ikP0
	 VgrCXSN1pB3jh9SfjKjlwM4aWPXsDsET0HmOj5+1WsBOdiiJyqH/vFjnvUuIX8w9VQ
	 blK/PdNaZGhhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AED7CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915379362.20400.11529124198159589394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f62a26e517443686841f29f419ad3656bd1381b825bc133e7bec445b1e3348
Date: Mon, 29 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759153793
