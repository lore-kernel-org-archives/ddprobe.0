Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E27E573
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765520574; cv=none; b=Hkvzeb4mW0xPyBftlpCHTwlotjPDjNWWnibukF7TmB70qnwZtpN2k78rJaMp8aU/J7bTuZMKWJM27x4rykkhhqnO5ekbCDfHeHFNxmTFylqFNJenqQeNp0XpkTOw0or4ZZoyofJhh6N3QrMPohiFQ3I5Ro6EMsmKM/hU1HYaLC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765520574; c=relaxed/simple;
	bh=VE+xAOrbMyfFEmRJF3+ZJFMJv7yr+wKPtMsdKXPX+Sg=;
	h=To:Subject:From:Message-Id:Date; b=dwuCW71jxWUhOZL/4nN7A+CxPMGh9yplWk3TMwErQM/XBu0Y9k+4FVYQSx50tHfZ2rZEM7pQA3NC5n7M3uCiLB2H90Z7gP8zuCCtAsihKU2/YnfT7ybL7d1WkO4VpnJ8l2qL6cNXPKmweu82PlENKkSSsQUaymj4LiyZfyLpFzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3JSVWqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3JSVWqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765520573;
	bh=VE+xAOrbMyfFEmRJF3+ZJFMJv7yr+wKPtMsdKXPX+Sg=;
	h=To:Subject:From:Date:From;
	b=F3JSVWqYsWfSfEUoC+3KjrmQdgA2oJq/gxfNHd+7MldfdI/Sad5iqp7hIxfECNsAG
	 zEIX/a5aj38cXYuC8LElgQmp5cMvY9rikvdrWVjWbzKL5z7bzBFwfbQMYHnv+/oltF
	 P0hDMmY1wTmAobYv4bsyvpJXpkSsQORwxHo0TlMZf6z3oB32CshiU1weoNWM7YVox6
	 OS7xr35mO0aV85EYwgJimeMnMNHGF/ukF7Wat+4Q37pou5jQAZw6oaY11hdz8EegUg
	 bEUxsfF+5E6uaSm0nBW2vzSPSs3dUAzyA+k3qMVWDsKhL9auEDipMTTFdOnc+8YQpT
	 5vmWCOiXKuPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6BD4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552057360.5839.13307920462336434463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4d12b9c96aeb24acda7701eac31378bd2a107b3ad62b97fe8427fb4c24eb34
Date: Fri, 12 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765520573
