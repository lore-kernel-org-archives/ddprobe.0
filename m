Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A4A259C
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729141554; cv=none; b=MfMFFwuXM2PygY8vi+6ahvGUDkOGyQ75vFYU0cDRVTEeunW8sJeK2jCpLBdEA9aqpfz9D+6zrO3fV+jRShgU0CdwqVuFVJ2C9lsi4VMUkvPL+kECfGiTTwimvQj/6d/vdTuVau9lGW3kfMq+4hJfd0IVnRgM7zOCQZCoedGgb+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729141554; c=relaxed/simple;
	bh=cVJh8nKOgwtzRVeKqc2rs12RfexShpJiXBYTTTyak44=;
	h=To:Subject:From:Message-Id:Date; b=CQbjNQjn3e4S7ONTYYh7SVia12RPM3MeTLAfCMZYk/KOgeXIFQKVFsOW+S2TL3v0V21fj0j+ZgwC7h4m+cCp7xmSU6dNqDinIUnWSZYrX+4H7Ib+Xws8BC5C/TFeudVOX2DtP85EI6Uxkq0ew5pLcuRwj+TJX0Sz/iNiXdRpGgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVJQDW5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVJQDW5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FCDC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729141553;
	bh=cVJh8nKOgwtzRVeKqc2rs12RfexShpJiXBYTTTyak44=;
	h=To:Subject:From:Date:From;
	b=RVJQDW5p/3usmS7N+ls0aAJDu5ySG887hpDtBvDYr6YVxm7LHG99Z2sPbxBk6g3P2
	 Wma6xHlwea/ugKl8tP33b1AtBHcw1YK6UTQGijtKCouCJfnt/Avu0WXz3JmoJywkLr
	 97YxNAQ0Y+I8aw9Xw2f3OQnG+XIfonGTdtik/dP0iP3MTUkthfdMUkJuOffkukYvlq
	 owryUQxGGFHCVviCuGJaAvDq4K3hJUs42WYN5OvgOriRpzGIPScMa7WFpqUIxx6+pO
	 KcirSHdaO1tIzwivGK+hLPmvmuTuvETooPnrzI98H6uwQU4JNan2NGu4PTxqhwVDeK
	 CCr+FHaErFRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1336D2F7D5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172914155360.29343.15575399882610830919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d178b1141d82551ad5219246efe61c6e799737b17727811dd397c97b21ffbb
Date: Thu, 17 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729141553
