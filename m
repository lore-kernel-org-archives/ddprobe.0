Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F429225777
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750425594; cv=none; b=aO5lkG3KbSTD4S8IEtZwdd7sYxO740Z0kX3x/mh0pBPkJjEV6TSS81DkuCU6laBFsxo5el+iaL4A6+KS/y0+Kunam8t7u56IKcw1ZwyMS4VHv9ovcI3Xl6Kc5R3MByr8kGVLeZf3GVHXhFpmSa3ZVz/0uFUuRXRWhtjfYAX8Qnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750425594; c=relaxed/simple;
	bh=xgJBZ4TYZLOu7ic5A6RI4kEP+6N7LbbWc4IvsZ9jhzk=;
	h=To:Subject:From:Message-Id:Date; b=MuLuOH44CohOR++3JxhSxBF8x7/3jf/AjIujWvlBhwxTFMcZA3O5142SdnzSJuZ7Wdi2l6Zmr8ssvB/x+reiX1X+zzCZBI8J7dCKdgCMToVAUoBuyfJBnrRGDtYRqBsJstydTMFbQq8fJRI2MvMuXNweQaGei3DfT0MJeCkHCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke4fQYCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke4fQYCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21DAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750425593;
	bh=xgJBZ4TYZLOu7ic5A6RI4kEP+6N7LbbWc4IvsZ9jhzk=;
	h=To:Subject:From:Date:From;
	b=Ke4fQYCOTaFSzrHhIpx8My7p3USljH4tLB65LeqgoBwXCgwpY4nOzK4vF03m8EdCm
	 Dqr07/4v2TnMsVpHKTwictnAyiBeciqWR2sbJcRIojK0VS7zr8QiI+/xFK4YtEopk9
	 OMfGzYbYh+8B4OmtagRQ3AmsIJ7OvoUtMXa+R//ame4KdaHM3Kl5LLYa6Xcn6UHhsc
	 4ofxvc7E6sNo10MnfimXcOi6SUYucQisLolZjZ+3i4j8HdMkAXJTZdePt1U+0PDcsn
	 PMp5jnbkL1z7xd4LCnU5cZlemPkugo6fylmCTsie+C3ni/IrbBAH5W2zPJk8CVlqyj
	 1hSKt+8SWIa+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4FC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042559357.1333.14129733767579026562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782be155ee5f9c381a02df3b8ee020fc167cc726741a64798d50e77cc2b53a72
Date: Fri, 20 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750425593
