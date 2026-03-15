Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024E5339853
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773578694; cv=none; b=EgAf+BBzIPgm0BIWJMFa0viaKlord79Psc+eUra2cAdyNoJsgd735V/2jGlpBASolxLJ0bsgvd8r4Qa/O4keysUpmAw69GnVnsi5m5PPxlZwnFn/r8oUEiPUGJBF1hBkot4OsqV32E5UMte3aMTaImbL0Xmxm3hh8rnGsAp6V9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773578694; c=relaxed/simple;
	bh=US3uA5JMhHIYHCms+de0Xugkxs/Gvp54o5aKWcEhENg=;
	h=To:Subject:From:Message-Id:Date; b=AqTvdtsslCBL4x2seO4GJYeJsJh7DwSsndOoM6/5w0Cp0nO3V/5uRbQQIkAarsXMMnGlzaO9Q8B4hIlYoxynmwwrMDqtTeoFmVXSaAWTXVYuTyL0HXU4DwzHn3dHeV+Mml3OBMYkUwALY0/tkv4IQTYry0UplxrT5Pwlhgy8kn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZCPMeHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZCPMeHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDAC19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773578693;
	bh=US3uA5JMhHIYHCms+de0Xugkxs/Gvp54o5aKWcEhENg=;
	h=To:Subject:From:Date:From;
	b=CZCPMeHoeBGB/ANGL9zgO3VckMlld/xZMLPp4sDnymZQORli7Pzs/oVE6jLGXTjy4
	 b2dYKj4XK28+gtEyd5aQtke/wZerBZveHTR6cBhGUjOPi7QtxHZ2p/dHgVGof9oP37
	 6DK41o4vBNsjRtgE5MkvLtu1O3WpgZ9zPhid+w9l4/gR4jJupgZFKVCmcpmN9BWQVP
	 1xC+mZ+ekxbMID3OhWmnGmmscRMVaksaf0CwLyb3yFs0bGY+Bn6ZO+nUpamq0+9UKZ
	 cKgmvsIhFtiCOAm2q5KAjChgzHUSqqpGYAMACEQ5ezaAJNMjm6OFL/Smxvr7cIPvlf
	 uga/+aV0x7qWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74FD58B1B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357869358.20135.12739516925222031249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffde2b76aa5af9a509e5f5b5cb0e64a08f7051d9c1f820ab1f0073c49f48a273
Date: Sun, 15 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773578693
