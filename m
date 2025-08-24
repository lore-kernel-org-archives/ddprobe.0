Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6BE17A31B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756024794; cv=none; b=BEnaehp0cFHMj50jdejK1B3j/UuC88ky0Y3Wrfnw3gqdtdzF31rDW8ETvcuaKpuv4cCkFAEJUt7Df4X8PFC17z8R+xH+k2oQIXt+ZpCWumF7F+ZjlAfwK2vfLROQp2OnixwH6hz2ANj6Q+d/ci2EEmaFOA1Cx5ewi5L7M/lH8Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756024794; c=relaxed/simple;
	bh=XHeouqnk8eOUTq/VaifFNfaQcxUS1T9YBrkiDMPZVSs=;
	h=To:Subject:From:Message-Id:Date; b=FsuNSSSB1VIAI5hxhhNBW1mGa2tsk2aFEVDNztFkAix6e3E1XB7/98pP/sCR5zm+YrOk1uXf9Lcv7tobMAd6NgRirwd3WC4MSXOJwpLJp8E3QX/N8J3C60LkSa7JMm/8i7XBS6zvLANfyOXg64ko2kePwztWa5oARxHR+hj9Gc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw6MhpJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw6MhpJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64BAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756024793;
	bh=XHeouqnk8eOUTq/VaifFNfaQcxUS1T9YBrkiDMPZVSs=;
	h=To:Subject:From:Date:From;
	b=Kw6MhpJu5UeOHGb7dK97Lxk5S0Lag2yBwGG2gcYrDIPNGgfUXylUZ0nB1C/eMq403
	 KIJLujPikaDDa3w2WD+6Ow5Z1/vFjz3SHeGZAvzl+6bUOTWo4z5/F02CTUKLFThhhj
	 UxzIc8FHq599SePGlji1RgZaI+IRkuiNHh+DR3vDzbXzeAy40izn7cW9tzblpbfe2V
	 Qvc4i68Nl1Ep+FtUnoi+Rd8XpKsO0dv04NIrfmNRjh224LC21L3I8iQein+hJ0HzDm
	 On/FGBk789GdsBYnvYO9H6fVwH4t2gUfWUZazDZW89jpl7k/iKhCLNkVxQT7jjaFv2
	 ClcSAd0v/Aqnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A5CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602479358.1105.16781850990038914991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9245f1fd6bcd8560f19ff8ed54d3111ca15e7a04b5a2a4e3fdea631ad8789d5b
Date: Sun, 24 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756024793
