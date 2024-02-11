Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24355125CA
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707634697; cv=none; b=qqZtNzANNw+sVVGvFRWeXGGfDMpEact4Ed3TbvgJAYRCGgX/YiQBZsgYedJRSgEo6sy+tOZ2ix0Wrz2n2a84Mtem3se3iX/EKeBqoyaFO69MZ25E0CkVe2O9ooCuwd7yrkjbF9owVBVV2mffYpVJL+qeiwvkgScs7HWY2VdFZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707634697; c=relaxed/simple;
	bh=/UHaSEYOitdYsj9F0UXasYoZTMWhDdtYP4AFu+MqldA=;
	h=To:Subject:From:Message-Id:Date; b=AuZIjTGZxkuOfNHDQsSI45xYH7tbvpIVYgOWZTA8xvGsJwtUsVJv1Op+poM3n48bayFUQXty3qkdoKR0gBj7yK9E3p85w9egURGITi0vveGaDeks5ynV1juNjvNREDQ8dm1VQCtlyDv5AsgTcBOYMEFdJ6RpMVo9vNzYjg0zju8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7Yb76S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7Yb76S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827B5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707634696;
	bh=/UHaSEYOitdYsj9F0UXasYoZTMWhDdtYP4AFu+MqldA=;
	h=To:Subject:From:Date:From;
	b=Y7Yb76S/314hSArBD7JY9UJ2EmOxMqZWkqIPynC0rvgxPib8tnyO5tchL7w+k74cR
	 5i/MhK2MMDWlmtFOdUyLke2WzD7XJkgiTjzINdGDm6Iu3v7NjhewNYoHSag7sUpmHe
	 yAuvBu3YYEk5tontiIi8UKV4xdN7xMybkGjKGbe/QOVcIT6d4pvpFY34Hn3enKiGTu
	 +x/AsOULn9sKFdfaFMV9i0X3nGCEUS7zu1+94hHdkbR8awCllHcbC8te1DhctTRP6c
	 D5PdlpzQ5N9WwnNyFcK639UKwZrSKKYhX+kvBs8ksSMcmmNy5gQmEv9/x+vFnsoEHf
	 W96HWxI4CJ6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65027C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763469640.27956.9254673510806229969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1971cbbe0a6cd17664b00056552545f83141dde225034d35596b4780882cb812
Date: Sun, 11 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707634696
