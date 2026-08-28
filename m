Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4199935C6AB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787932834; cv=none; b=RyFNCCsr32mBkJsMwicyRVbfTzQe3vAQYock8+VNbgYgJRRksmjdNP3w8Q8/LPFoEapE8qSgRz3A8WzHtclsvf4hpewvKPD4g9E6TLEjvEdC/XISpbI+s3OCeHZKpnSpoalOMb92Zv3pWKi8mxfBxb6KIcGP4Ys0G3y6zIxm8dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787932834; c=relaxed/simple;
	bh=r7CJ23eLuo5c1PuBvNoHCbMuxbdF9LK6rtwJZfWR2iE=;
	h=To:Subject:From:Message-Id:Date; b=d13viNpgkJpKlRcUdXX+vkd0SSR/e9k5Gu7qQBDy9sxzgpjXSxLAwD2WeyacH7ePhso3g2VuWqsE5mef6uHRUGcEBiWb7mrMHbo4SXfglQIJEKZ/40NYYHNQf40hGMS2B+5SFK/K+JssE/qgdDV7d9sFXxokU7lzRZjghrm97cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIvOs9U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIvOs9U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3409C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787932833;
	bh=r7CJ23eLuo5c1PuBvNoHCbMuxbdF9LK6rtwJZfWR2iE=;
	h=To:Subject:From:Date:From;
	b=YIvOs9U9mLQdwDiNKm1ohFL+1bJjXqTSSg8voI4iWrGejqIXjUCf26bD/WCKaCE3s
	 CI2QQHxQqfcgFb7YZUWgc8KNAxRcq6QNou0hfJssWbPn7O2pL/NlIbOPcqJsSdXH8S
	 MyTLTDbBhlFnFKZ6V/YDJ4YNH+44DtlswVP/k2McZNAwCoqLjUaBvGEgCURdA7DMkd
	 kD6zSgMU4UdvWQ3nPSZIyebtuZObRCKNi8qnTheNiIg/3Ioz3uU96VmJD6fe5hUV6z
	 xR8Z6L8e7QsXvfzUgsb3BtIh0dTdnjcUR+7nXkVGFERLO4MZNwlLzjV+LDK+axKFlH
	 AxV+OxE4OLfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF89C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793283370.11287.15603240387262021203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ccbdff20935555ab9d875e664220295ca4ebf7401d96db1c5c3227695c58de
Date: Fri, 28 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787932833
