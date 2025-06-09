Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AAC24C09E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749467994; cv=none; b=QJFrk4CGFCsAOBSa9vfHpNkUy2i3yDJFhB6+zOMemMYRXUHWQY8pXqe7tu9w9vIf+l522vK/qR2x5dXuvbfxF9VkqYBoDMgGn/HMNwfMDT1aU5HVdY8+q9J5QUZaVZwHC1CcZpdi8d82GfN/vCp6C1vvP2lPVdBHJDpifT/Ip9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749467994; c=relaxed/simple;
	bh=8pQstzqNjMP1MYur8D0WhrjpXB5o92aIV1JaHXdcqpM=;
	h=To:Subject:From:Message-Id:Date; b=keK0pQOIKOP6bvybUKJO+K1tGn9Lsqaz0I407lILDTlJPHPZ9WwQwabSutmuKrFoFD+XcxNw20hVhC1quW5eZhJ14xKhwoAMXPrK50G8SELAGkSTB2gqsO4z+6ijUtGk/XEUNHmDSolBLjpHz0mAtwKwJ6UCsIue/njZqu8Z3x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhzhT4Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhzhT4Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC5AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749467993;
	bh=8pQstzqNjMP1MYur8D0WhrjpXB5o92aIV1JaHXdcqpM=;
	h=To:Subject:From:Date:From;
	b=MhzhT4Q68zxOnbYInu9RUkobeqQFdpy7T8bDSn59zYDamV+ny0w+dkpMemJnKlu6K
	 OAEnLdXX0NrL+bjfZu/hpFOtb+NGDNk1BwjXIjIQIge6Uzjt+Dy9MzlGgDJK0M/VZE
	 5P/HwduD8qvBiou1tRtCyvfIydn984jIoYyXxKcEyOgQwSbpqj2prAnjpr8QDOQrEL
	 pYUNt3Noryh6AoQNL+ipaL/80DoJtLLMgZS1+ZBsy1JP9da0Mtn0TwLOJww9hERsEP
	 XsbFTwvoqNIReNxXYIYAMp+OPhGjavriKwTiODS8IsSPKxeTno5fTiiFDvxGu3Gh89
	 KAE9rX8EDpkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED27C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946799357.7909.6067847208558327692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69b5f8ba6fad2732f718b7f6df44920b49d8fd06985cfebf84fba39defdec57
Date: Mon, 09 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749467993
