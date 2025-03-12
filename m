Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E17146A68
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741751334; cv=none; b=bo6Xom2NvWV77M1CnHWRCtOaU/qQbBZUUBaZAy06rlR89SZLtGg7zauy035HdloF9uDxElCLIdUIPmntATc3s3hdNAJL7LVqx5pM9UMVr0udWciKLRf7Xr1UPXQvcC8k4LvDS/G44OF3NzMk/SPmhBi1N/Y2TYNBaZZJvI7Yoj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741751334; c=relaxed/simple;
	bh=QFl5+eg1eMS2cdt7BLQ1cN25zAog1QUb1jult8OWnTY=;
	h=To:Subject:From:Message-Id:Date; b=fVJB5Re+e31HHQ5qfRHPa1Xi5RIQy11LqzxZuZznqU9MgTE7vCf7rBk+5HYvSAlwsk5mBmjojmqZ7qcSwbTHb04nIF+XF2ZzPKnNqa360Ffkx68PnEXTKMwwbw4yOzKn5p71AsadF/zXrWJeHowq/advUkx22YGuF5EMlCn2GP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnyR+GC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnyR+GC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE4BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741751333;
	bh=QFl5+eg1eMS2cdt7BLQ1cN25zAog1QUb1jult8OWnTY=;
	h=To:Subject:From:Date:From;
	b=MnyR+GC8VjbqWsdLsyYO8LfkVkCGcyY6vXcOxce+QUYhaJW98B5rvY57j/3Bxs3o8
	 f7F3qzU4QYBA0Xm/vKeWeNRUg9DvFqT1WKly1wrGJBwUbbNfzGrdVE9zHGAdIl7o9/
	 9TbXuUwUrba1HixcTNWlUu2xKP1xYkhSV1MHoJ5cgSSlYzL12iXV1TKaid8V6eSKeE
	 LgPJpCu2THKbQ2LcCEbpAWtRwOKajb9k15Edv+b7GWcoz3JTgsGkgz7XY2Du8eYert
	 K8kHwepojh3wrJP3GXcDUMk2/lEIiBKkkTAryA6qqqIZIOJJti6uVZAdZPVoiP7ha8
	 Ixtvkp1dADBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90485C28B30
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175133358.21474.9891743497376601605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da99b675637cf4bfaf5d5e6329e747a56bbf2e71cd7e76ae96aa11443c00e66
Date: Wed, 12 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741751333
