Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B1326AEC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728444954; cv=none; b=t4Av7Zh1PQWF1x4Is2i+obVwkyXGLCfZkgok3BBvpn4syky45uuKQXZwglMEwJLQ9x9lqJU5uWCzOh+jRsQIgMJse9qBN0aAH5E1MjtUvA9EdqwXyO/M5EeoZoCfOUyD36FDwEjzT6TvshMr+LpT5ZPtRc8fMX9tnyl6WsPK3N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728444954; c=relaxed/simple;
	bh=o/Oi7b2ZvRIwKVkZXFrkiksGLtL7M3BzAfONn7zi4+A=;
	h=To:Subject:From:Message-Id:Date; b=WHzzPfpO0qXWiW7+RL14uHu1ilIgMprsw+MI/izI4sFuvN1v6VXdyUPD2M83UOPGRdjGXs69vMhNqzZ38qnjnhLyZinyWr/zvYDsPu8AY4txC+EzRt6B7up64znaOEbpD9FFJ6LPSYNr8iCaa972db25wFKF5XNRZ7h3dp4sDR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Unserlw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Unserlw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B478AC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728444953;
	bh=o/Oi7b2ZvRIwKVkZXFrkiksGLtL7M3BzAfONn7zi4+A=;
	h=To:Subject:From:Date:From;
	b=Unserlw/y04H9OU+6yxlgPXCNT9UnJZSiSSknu4XQl2dBw/3knhoahUdpIKAE1Dn0
	 04XZrD5S6zDqzKaCDM0MYAnpiYDaWgWs9VYRMHcU/GAPQvjD6A8/AgknXxr4PpisRS
	 jwR6A12198N/Z7UBHWT5g7rU/HmAkKN2oGt76q3PkM03z6lAji7nxIXj684xX66muM
	 qnDzxUooyW9X4jHKqB1wnYRyI44EJH8BvJ4iLaQgZjJWpTbhJsyO2YjcnqzN75wl2W
	 zirToUYK+QNz0N90n0OZ4dW7u9URMCjTvZs7LmnFV3CvIYDiqfOZ14JEKw3OhllaeM
	 vFePMi5E3Yq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04CECF043B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844495364.12138.7109566456560162043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065579167c833cca9a2ae4f967b5fb34fdded3a13022f9648a4c16a17bed9549
Date: Wed, 09 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728444953
