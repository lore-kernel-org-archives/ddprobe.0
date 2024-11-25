Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FD1426C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732530954; cv=none; b=nAOJi3JqyIdvl9i3701vOCQUVGqV8EQ/bR1v+e2Q8W8efwRU+dBDRx9Atoo6unbLXnGjkdgcrqknh2MVc+29+2b8vEGRYU8nMkHYrbD9Plx0Dlgd7y67gs51FzgA3dshrYafjLCWQw3T5N7KpBX4qH8JfIZb6lqkXiZ9ha/1TMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732530954; c=relaxed/simple;
	bh=BIbb+ZO2UelK5NRhCexaubbsK3Vt0FKF4u78zcK1AM0=;
	h=To:Subject:From:Message-Id:Date; b=nN4MKz28tJw0WaQQ3AhgDOqaxdKCCaHqggyqw/hzOHIIGg0Kv+twAOLWsebxp4k687rlcNaBZSI0dJSS7XmxeKYOdYKUf6vYjG1GvOR8ex1wL2KVtS27oQDuxFA5+qaI4GBWjTvI7fECV3Jyt3wCFVWxBnjOoLz8ylX3s/qDPNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRkDCfH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRkDCfH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B365FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732530953;
	bh=BIbb+ZO2UelK5NRhCexaubbsK3Vt0FKF4u78zcK1AM0=;
	h=To:Subject:From:Date:From;
	b=ZRkDCfH4OVhITC6khaISbPcpittoYcRc8vHrkpBvGGBQVjE3z1EgeZsL5KsHB4Trd
	 8WNDfsrQMFTVVg3Fc/ncNn1zWwTH4UXYgdOjDbFDuMu9injujNPNkLBQvE3De+XzRx
	 rawFw7z4rrBbpro/HK1yQ5LP1CkYeU8UABo2nVp6vxw60oIvDIiQ4Fn/wz0//ERI3k
	 asMMewgFJRlEzLA4YbXThN46nyySJJHN+tkEYJkpwY9gL3cZ7DOW9W7GttFryNdF3w
	 hP1rTk42A+LozwhRBM87asc0UO5XZYFZPCu/E/KcoWtklwjHgSo0JEWkyvCFqGjwYb
	 T3vSJ3/o7NniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A04D3B7FE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253095362.14790.3607216544469510003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72f16a67649644fd1e64fccedd3f0d886030013194ad4067f14887443b63898
Date: Mon, 25 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732530953
