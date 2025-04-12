Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC5117D2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744426194; cv=none; b=drxC2M5aQKCRDxr2H7fexfkMvG+JbhkrRlTvf8c1GFYntxH74Zg2lEABX4cIeCBQ77YBb80mch2SK4B04GD8v0/2Q/kLqxSxudT5pq6u0A/fhvlKF0qRqskSG7jNslRjXxFJ/JVuE78y4Q7Dwg8n21/kpbyLpqeK9yHt4++4Lyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744426194; c=relaxed/simple;
	bh=3gZuMuBPGCMfaydI11svydbdKEiJlKwj7y87sq4p/lU=;
	h=To:Subject:From:Message-Id:Date; b=f4MgOX5pAWmICpOdoBvTjY1pLsWdTe+5xMkQJD4KNX9SDIg8cR3D6pq5p134Bq+8Hff0UKnyJekWETADn//9vNHkPE4p+Q7M/vKKuYBWUimeBrTwvexajwXXQQX3PYdoLX3xqdpreBiRXEVr9cxC0fM/dcVlEYmbLbZ7yZAVw+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3na46Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3na46Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4978C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744426193;
	bh=3gZuMuBPGCMfaydI11svydbdKEiJlKwj7y87sq4p/lU=;
	h=To:Subject:From:Date:From;
	b=Y3na46Jzb7J7MJ/6YJH9HA11p06nGnZwOE7k3DXveEGiiN3il6OEJLB2LJtKp3jSU
	 4bcrin+h+9KZ6CTmOcK5AoHaxcrGxxOlEe6+yr56gUwtzmb8YM1GK1vERUsE9sj10T
	 QYCBpq+JsDBmN5HRA9Vl+AtkSGFi4bU+ttp1+S2haq7NSbUNoxcOSIMF8OUfFHltBq
	 rsySj0uByH2WGDrZEe1gXMRFVDb7tsLhYra6RYPsDMm41J5w/SMajaewD7HTiFm0CS
	 yjwpjENlhPUu00/Rl53WUo+/7aCX84KcCjS4xtftJktK5w+ub/gERp22ZKn5hJ7tfE
	 U79R0YxEBU/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF6C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442619360.18716.3581272587972529193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afcb64a7d1b487b75ef03e9e96523ecef91e73826d6c849ea4690aa2025031d
Date: Sat, 12 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744426193
