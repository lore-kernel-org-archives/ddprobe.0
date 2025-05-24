Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42072127E18
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748049594; cv=none; b=lQ0vLkRuG1jmSoiAE8pMWBqmq+C/3wH4XVnfop9ziP4GilcK1XxcJPATU8PesOmYxC1plC/oMCp7FKNu4r2bO0xuNkTBKZgO2FCMon8u5Yarwflg0Ebhf1RKzCqsjrYRXqtacsLXokQbEwFu7HZL2kGkoysDynRWcaT2FLuOPmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748049594; c=relaxed/simple;
	bh=fIhHMZJ0ODaLJgxMvJ8SPzIBSRCj349bo+IT6oF3M/E=;
	h=To:Subject:From:Message-Id:Date; b=Em+/j5EJ0+GLqF3KdxwNqcX9CAH62ic8yIXcOM/XmQHtjVPEX36Le645ncRrkVSXNCucvfkMlgU/MZg63BxbBOqxkFWl+MfAX6P5hV6lnIVdYnoPwbFuIBch925xmSx7RtB1RUKHzyH2pBJea9A/h9uxcarRhj3dEf9lrEXbY+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk7E2pU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk7E2pU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0630C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748049593;
	bh=fIhHMZJ0ODaLJgxMvJ8SPzIBSRCj349bo+IT6oF3M/E=;
	h=To:Subject:From:Date:From;
	b=Uk7E2pU+9DzcnraqNu5GdeILMJ6qkPP72buEG8AzQQopTQvyp3u25PSxJHACDzV8n
	 EDeBQGCHAKKSJQBisSwGSZE3/2gpeCkoT27oJjMAdiB+9xZh+uRnW8uCq7CZE0SRiQ
	 HcqC1zlMEuf+KlgoTr3PDON19L9uw5EHSFAZwsSlhY4MqDCwGCFcI3AynGobhqhik5
	 osEmg8JLhu8GQq+kCAl2QRvZlThSYhBHnIVFqHr5drQ2RLSy7NEDw3VrQbslDoLiEI
	 7DnYLzShdS1V+0H/5hZ9Vsv6YLkuPZMBdDpSM3T6eey8TJ8nG6OVYWO5wuvUQ/kPHy
	 /hs2QMKwoSxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCCC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804959357.22352.17272676910159443747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d1390bb6bbfe64855d185bb85dfc525e72bfecaa132205b6619dd47882b057
Date: Sat, 24 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748049593
