Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1963F175A71
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774113894; cv=none; b=cS/a6lmW0t69fkbVZweVmJbOubuMIqpOKErR29PFgrCIGViKWeSNS69zxMRRdbR5X0YN7Mywd/LiJ7cUM/drP6rvU6rSnWyvkg1UlKPnBpp3agFJH9w8csXFGWyck8Q4xMkaSeDUfOOAsw9CKaot9syS/dX7taTQSrn5wDKcRYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774113894; c=relaxed/simple;
	bh=qeorMVKmMyBVKjLVlV+Ky4UnXZ+fMHEnCCINTFZwTQE=;
	h=To:Subject:From:Message-Id:Date; b=P+Iyzx24sY+JZxZp4Xmloh+o/rOAtnEL1UUpCPhsDcbz3h+Yj94JaEmg9biUxHLquhUN/YVxbYHUF1xtx3bA1bOhfnhn09UPQufnwztq7bQ2qBfn0GyKQybOU1GwmIPIuKfifGh+ixGF31FQzAcy9FcwPgadbQTgbpZ6SUBQ3L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1IUEJQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1IUEJQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5703C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774113893;
	bh=qeorMVKmMyBVKjLVlV+Ky4UnXZ+fMHEnCCINTFZwTQE=;
	h=To:Subject:From:Date:From;
	b=j1IUEJQFqDCwYZl5p+/eB7a8C3I8x+g3EDDqmpMqWKz7m0g27A0UCMKYxeBd8CdHx
	 1NOZQmWz72nhfmzRclkjNC4dCyTuMvEi96IhaMw3CEsgVZ2UwpDhfBb9EqRSUOLdDJ
	 znBekfyL6jZIBbP7TVIza1mvyT2t9rBDaC9CnEVYFAy8ivDiBXoZJwdc2G7DdF6fc0
	 C48+3RKTMjpz0aUmwM86EN7IVaYFUavEVXlGdbSWOSUqWEEjAvoDkLYocPCJOOuW4q
	 UIvLsKLTzwNRf9g3bo7baelx5DqJJw0JlqEE4xicT+cXHTQUfCzwlU7UKHbPkHLbBv
	 OJzEcJN5OqDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C71094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411389357.2557.15003727364040709084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216d3a57dfea8e2ce8ac5cb8e621b2330de73c11746aa6093cb4e6b926b4b870
Date: Sat, 21 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774113893
