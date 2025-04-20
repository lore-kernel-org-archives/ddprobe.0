Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E165234
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745126994; cv=none; b=rW2j3zpgD43hkfZ9FSFi2WaXURdV/P+i4q0Se1xUz5zfOwHSjyKLSo4kqPXX6sNYj5j2UScjhxoBQsnV7ZY0kjaayPRVr2SdcCFS5oYTrxc9UsuebQwwj6nsMdpSy4jttBL0Lnapwg4M5iBC+rGXpVEJgePdW8Ea5rMZd025jW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745126994; c=relaxed/simple;
	bh=XLXjSQ87KadxnM4lq3KcIyEV9fsnKV5O/rN7xCZm4pg=;
	h=To:Subject:From:Message-Id:Date; b=hlPlPLitQKWsGHTgaS4MQLq/+Ll6dA12tJLoZ+ur4OyHtBTeBXNUsY1+REMTp5r8xHOzuOvJ6pL4MqDqGqio1EOZ8lbZcGOrdkHToVmKo0PG0tcP8VCGaU0gSYPm3KSbC48OrFEMaZLfP5LDNgUrb/RkOI3Hqz0Cva2cR6fL0Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On3c2l4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On3c2l4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A93C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745126993;
	bh=XLXjSQ87KadxnM4lq3KcIyEV9fsnKV5O/rN7xCZm4pg=;
	h=To:Subject:From:Date:From;
	b=On3c2l4lbhCguWKxUCG70XZfYNAz9yOxIUYiagkIqtI2u0dx4VTdAHuEt3OMjqimK
	 GeSr8KnxZx8/8S7JvDfxTQCbdN8QWYV1PRkSYUOTwq4tprbvJtFRWvahBYI+a6aZYN
	 G7wAY/f97vYnViPaF/ISwuGMWyYCNTE3FIlPjBJxE4gV5VgVYX+HEmxIAtxsiScU9V
	 2hBB6OmA9GffVYcqbwYV4PfRr/2pwmp59IHtovVQubs3u7QhO6bTt3Chc74S7boI2y
	 C9n9OEuNiVAOYeek/jD1aGQERWAeWf1BEVow86AD7t7J3Dcz6DicMvUMKG78lakSpH
	 so76EY5CKVx4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95418C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512699360.18457.4608704068965777136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064616bef8e7602e8968507aea7083120d9e87a461b27ed4764d0994fd7cce48
Date: Sun, 20 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745126993
